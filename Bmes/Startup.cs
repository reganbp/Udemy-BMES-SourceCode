using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Bmes.Database;
using Bmes.Repositories;
using Bmes.Repositories.Implementations;
using Bmes.Services;
using Bmes.Services.Implementations;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace Bmes
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.Configure<CookiePolicyOptions>(options =>
            {
                // This lambda determines whether user consent for non-essential cookies is needed for a given request.
                options.CheckConsentNeeded = context => false;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });

            services.AddDbContext<BmesDbContext>(options => options.UseSqlite(Configuration["Data:BmesWebApp:ConnectionString"]));

            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);
            services.AddMemoryCache();
            services.AddSession();
            services.AddTransient<IProductRepository, ProductRepository>();
            services.AddTransient<IBrandRepository, BrandRepository>();
            services.AddTransient<ICategoryRepository, CategoryRepository>();
            services.AddTransient<ICartRepository, CartRepository>();
            services.AddTransient<ICartItemRepository, CartItemRepository>();
            services.AddTransient<IAddressRepository, AddressRepository>();
            services.AddTransient<ICustomerRepository, CustomerRepository>();
            services.AddTransient<IPersonRepository, PersonRepository>();
            services.AddTransient<IOrderRepository, OrderRepository>();
            services.AddTransient<IOrderItemRepository, OrderItemRepository>();

            services.AddTransient<ICatalogueService, CatalogueService>();
            services.AddTransient<ICartService, CartService>();
            services.AddTransient<ICheckoutService, CheckoutService>();

            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            

            app.UseStaticFiles();
            app.UseSession();
            app.UseCookiePolicy();

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: null,
                    template: "catalogue/{category_slug}/{brand_slug}/page{page:int}", 
                    defaults: new { controller = "Catalogue", action = "Index" }
                );
                routes.MapRoute(
                    name: null,
                    template: "page{page:int}",
                    defaults: new
                    {
                        controller = "Catalogue",
                        action = "Index"
                    }
                );
                routes.MapRoute(
                    name: null,
                    template: "catalogue/{category_slug}/{brand_slug}",
                    defaults: new
                    {
                        controller = "Catalogue",
                        action = "Index"
                    }
                );
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Catalogue}/{action=Index}/{id?}");
            });
        }
    }
}

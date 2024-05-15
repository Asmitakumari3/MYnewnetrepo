var builder = WebApplication.CreateBuilder(args);
builder.Services.AddTransient(typeof(WebAPI_Projectdaycloud.AsmitakumariBankingDbContext));
// Add services to the container.
builder.Services.AddCors(policy =>
{
    policy.AddDefaultPolicy(defaultPolicy =>
    {
        defaultPolicy.AllowAnyHeader().AllowAnyMethod().AllowAnyOrigin();
    });
});


builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.UseCors();

app.Run();


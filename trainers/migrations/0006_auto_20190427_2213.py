# Generated by Django 2.2 on 2019-04-27 14:13

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('trainers', '0005_auto_20190427_2148'),
    ]

    operations = [
        migrations.AlterField(
            model_name='trainer',
            name='user',
            field=models.ForeignKey(blank=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]

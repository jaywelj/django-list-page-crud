# Generated by Django 2.2 on 2019-04-27 13:48

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('trainers', '0004_trainer_trainer_photo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='trainer',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]

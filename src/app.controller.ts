import { Controller, Get } from '@nestjs/common';
import { NutritionNeed } from '@prisma/client';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): Promise<NutritionNeed[]> {
    return this.appService.getHello();
  }
}

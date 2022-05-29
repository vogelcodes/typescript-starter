import { Injectable } from '@nestjs/common';
import { PrismaService } from './prisma.service'
import { NutriGroup, NutritionNeed } from '@prisma/client'

@Injectable()
export class AppService {
  constructor(private prisma: PrismaService) {}
  async getHello(): Promise<NutritionNeed[]> {

    return this.prisma.nutritionNeed.findMany({
      include: {
        group: true
      }
    });
  }
}

import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { InvestmentvaluePipe } from '../../pipe/investmentvalue.pipe';
import { CurrentValuePipe } from '../../pipe/current-value.pipe';
import { InvestmentstatusPipe } from '../../pipe/investmentstatus.pipe';

@Component({
  selector: 'app-stock-details',
  standalone: true,
  imports: [CommonModule,InvestmentvaluePipe, CurrentValuePipe, InvestmentstatusPipe],
  templateUrl: './stock-details.component.html',
  styleUrl: './stock-details.component.css'
})
export class StockDetailsComponent {
  stocksArr:Array<any> = [
  {
    stockId: 1,
    stockName: '20MICRONS',
    stockCategory: 'Mining',
    stockBuyQn: 6,
    stockBuyPrice: 487.08,
    stockCurrPrice: 560.78
  },
  {
    stockId: 2,
    stockName: '360ONE',
    stockCategory: 'Asset Management',
    stockBuyQn: 5,
    stockBuyPrice: 787,
    stockCurrPrice: 800
  },
  {
    stockId: 3,
    stockName: '3MINDIA',
    stockCategory: 'Diversified',
    stockBuyQn: 5,
    stockBuyPrice: 334.58,
    stockCurrPrice: 400.67
  },
  {
    stockId: 4,
    stockName: '3PLAND',
    stockCategory: 'Real Estate',
    stockBuyQn: 2,
    stockBuyPrice: 4456,
    stockCurrPrice: 5512.57
  },
  {
    stockId: 5,
    stockName: '3IINFOLTD',
    stockCategory: 'IT',
    stockBuyQn: 1,
    stockBuyPrice: 1109,
    stockCurrPrice: 1239
  },
  {
    stockId: 6,
    stockName: '5PAISA',
    stockCategory: 'Investment Banking',
    stockBuyQn: 3,
    stockBuyPrice: 2231.78,
    stockCurrPrice: 3211.56
  },
  {
    stockId: 7,
    stockName: '63MOONS',
    stockCategory: 'IT',
    stockBuyQn: 6,
    stockBuyPrice: 500.46,
    stockCurrPrice: 540.50
  },
  {
    stockId: 8,
    stockName: 'A2ZINFRA',
    stockCategory: 'Construction',
    stockBuyQn: 2,
    stockBuyPrice: 2113.50,
    stockCurrPrice: 2001.45
  },
  {
    stockId: 9,
    stockName: 'AAATECH',
    stockCategory: 'IT',
    stockBuyQn: 1,
    stockBuyPrice: 1121.50,
    stockCurrPrice: 1120.05
  },
  {
    stockId: 10,
    stockName: 'ADFFOODS',
    stockCategory: 'Food Products',
    stockBuyQn: 3,
    stockBuyPrice: 100,
    stockCurrPrice: 110.40
  },
]
calcProfit(stocksArr:any): number {
  let profit  = stocksArr.reduce((stock: any, acc: number) => {
    let profit = (stock.stockCurrPrice - stock.stockBuyPrice)*stock.stockBuyQn;
    return acc + profit;
   }, 0
   )
   
  //  console.log(profit)
   return profit;
 }

investmentValue:number=0;
  currentValue:number=0;
  diffValue:number=0;
  calcValues():string{
   
  for (let index = 0; index < this.stocksArr.length; index++) {
   this.investmentValue=this.stocksArr[index].stockBuyQn*this.stocksArr[index].stockBuyPrice;
   this.currentValue=this.stocksArr[index].stockBuyQn*this.stocksArr[index].stockCurrPrice;
   }
   this.diffValue=this.investmentValue-this.currentValue;
   if(this.investmentValue>this.currentValue){
    return 'Loss of '+this.diffValue ;
   }
   else{
    return 'Profit of '+this.diffValue;
   }
   
  }
}

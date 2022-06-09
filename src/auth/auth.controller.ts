import { Body, Controller, Post } from '@nestjs/common';
import { AuthService } from './auth.service';
import { AuthDto } from './dto';

@Controller('auth')
export class AuthController {
  // Dependency injection, inject without using new
  constructor(private authService: AuthService) {}

  @Post('/signup')
  signup(@Body() dto: AuthDto) {
    console.log({ dto });
    return this.authService.signup();
  }

  @Post('/signin')
  signin() {
    return this.authService.signin();
  }

  //   authService: AuthService;
  //   constructor(authService: AuthService) {
  //     this.authService = authService;
  //   }
}

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEEF568B
	for <ksummit@lists.linux.dev>; Thu,  7 Sep 2023 11:22:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A96C8C116C8;
	Thu,  7 Sep 2023 11:22:31 +0000 (UTC)
Date: Thu, 7 Sep 2023 07:22:45 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, Dave Chinner
 <david@fromorbit.com>, Guenter Roeck <linux@roeck-us.net>, Christoph
 Hellwig <hch@infradead.org>, ksummit@lists.linux.dev,
 linux-fsdevel@vger.kernel.org, gcc-patches@gcc.gnu.org
Subject: Re: [MAINTAINERS/KERNEL SUMMIT] Trust and maintenance of file
 systems
Message-ID: <20230907072245.666b2fda@gandalf.local.home>
In-Reply-To: <20230907110409.GH19790@gate.crashing.org>
References: <ZO9NK0FchtYjOuIH@infradead.org>
	<8718a8a3-1e62-0e2b-09d0-7bce3155b045@roeck-us.net>
	<ZPkDLp0jyteubQhh@dread.disaster.area>
	<20230906215327.18a45c89@gandalf.local.home>
	<4af7c904-ac36-44c9-83c4-2cb30c732672@kadam.mountain>
	<20230907110409.GH19790@gate.crashing.org>
X-Mailer: Claws Mail 3.19.1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 7 Sep 2023 06:04:09 -0500
Segher Boessenkool <segher@kernel.crashing.org> wrote:

> On Thu, Sep 07, 2023 at 12:48:25PM +0300, Dan Carpenter via Gcc-patches wrote:
> > I started to hunt
> > down all the Makefile which add a -Werror but there are a lot and
> > eventually I got bored and gave up.  
> 
> I have a patch stack for that, since 2014 or so.  I build Linux with
> unreleased GCC versions all the time, so pretty much any new warning is
> fatal if you unwisely use -Werror.
> 
> > Someone should patch GCC so there it checks an environment variable to
> > ignore -Werror.  Somethine like this?  
> 
> No.  You should patch your program, instead.  One easy way is to add a
> -Wno-error at the end of your command lines.  Or even just -w if you
> want or need a bigger hammer.

That's not really possible when bisecting a kernel bug into older kernels.
The build system is highly complex and requires hundreds of changes to do
what you suggested. As it is for a bisection that takes a minimum of 13
iterations, your approach just isn't feasible.

-- Steve

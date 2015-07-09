Return-Path: <linville@tuxdriver.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 39730BA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 18:15:13 +0000 (UTC)
Received: from smtp.tuxdriver.com (charlotte.tuxdriver.com [70.61.120.58])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8F45F13F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 18:15:12 +0000 (UTC)
Date: Thu, 9 Jul 2015 14:08:46 -0400
From: "John W. Linville" <linville@tuxdriver.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20150709180845.GG4265@tuxdriver.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150708140727.GH23515@io.lakedaemon.net>
	<trinity-9a36fcd4-7739-40a7-b5f9-0ecf88d0a331-1436383797204@3capp-gmx-bs35>
	<20150708221836.GN23515@io.lakedaemon.net>
	<20150709150938.GF4265@tuxdriver.com>
	<20150709174535.GB32448@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709174535.GB32448@roeck-us.net>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 09, 2015 at 10:45:35AM -0700, Guenter Roeck wrote:
> On Thu, Jul 09, 2015 at 11:09:38AM -0400, John W. Linville wrote:
> > 
> > I guess I'm suggesting the opposite of a "professional maintainer".
> > Some people thrive at being the center of a subsystem, as I did for
> > some time with wireless.  But burnout is a problem, and I think we
> > can limit some of that if somehow we can encourage less expansive
> > roles for individual maintainers.
> > 
> 
> I hear you.
> 
> However, having individual maintainers with a high level of responsibility
> and sense of ownership is one of the reasons why the Linux kernel
> development model works as well as it does.
> 
> In a corporate environment, there is often no sense of ownership in a
> specific piece of code. Quite often there _is_ no owner. As a result,
> engineers don't feel the need to keep the code clean. They need to make
> a change, they make it, they move on. The code gets more and more messy
> and buggy over time, and no one really cares.
> 
> Whatever we change, we need to make sure this doesn't happen with the
> Linux kernel, or it will fall apart quickly.

That is a good point, and I agree in principle.  I would _not_ want
to see any sort of "everyone can commit" model.  Still, I think there
might be ways to spread the maintainership load a bit wider.

I guess the suggestion becomes a deeper maintainer hierarchy where
maintainers only pull from sub-maintainers, and sub-maintainers handle
individual patches and smaller pull requests from contributors.
This is essentially the model used for wireless.  That introduces
the problem of increased patch merge latency, for which I have no
good suggestions...

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

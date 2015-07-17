Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E803B8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 00:26:18 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id B8CDF114
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 00:26:17 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org, Greg KH <greg@kroah.com>
Date: Fri, 17 Jul 2015 02:52:56 +0200
Message-ID: <2709187.AHyDES0qnE@vostro.rjw.lan>
In-Reply-To: <20150716033642.GA7077@kroah.com>
References: <55A33E48.2040202@oracle.com> <55A6E144.4070300@oracle.com>
	<20150716033642.GA7077@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Sasha Levin <sasha.levin@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday, July 15, 2015 08:36:42 PM Greg KH wrote:
> On Wed, Jul 15, 2015 at 06:40:04PM -0400, Sasha Levin wrote:
> > On 07/15/2015 06:34 PM, Greg KH wrote:
> > >> What's the reasoning for doing it 1 per week? To get fixes out earlier?
> > > Because if I don't, the number of patches are just too large for one
> > > release.  And also it's good to get fixes out as soon as possible, right
> > > now I'm running a few weeks behind and people are getting annoyed...
> > 
> > If the issue is just the size of the release then -rc might work here:
> > rather than release once a week, you can finalize a release a week
> > after it's been an -rc:
> > 
> > week 1: 4.2.1-rc1
> > week 2: 4.2.1, 4.2.2-rc1
> > week 3: 4.2.2, 4.2.3-rc1
> > [...]
> 
> Ugh, that's just going to drive everyone crazy and confused.  Not to
> mention a lot more work for me, and honestly, I'm pushed to my limit
> with the number of stable/LTS kernels I'm handling right now.
> 
> And I doubt anyone will actually run the -rc releases, other than the
> testers I have today :)
> 
> So I'll just leave things as-is, because it has worked pretty well for
> the past decade.  There's always going to be bugs and regressions,
> that's software.  What matters is how quickly they can be responded to.

I tend to agree here.

To me, there is a tradeoff between being fairly aggressive with pushing
fixes into -stable and spending more time on making them receive wider
testing before they go there.  The lack of balance either way will make
someone unhappy.

Thanks,
Rafael

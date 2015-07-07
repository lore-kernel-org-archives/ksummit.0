Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D85D5BC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 17:23:39 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B2CCE22D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 17:23:38 +0000 (UTC)
Date: Tue, 7 Jul 2015 19:23:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Mark Brown <broonie@kernel.org>
In-Reply-To: <20150707171819.GF11162@sirena.org.uk>
Message-ID: <alpine.DEB.2.10.1507071922500.2523@hadrien>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<20150707171819.GF11162@sirena.org.uk>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org, grant@secretlab.ca,
	Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 7 Jul 2015, Mark Brown wrote:

> On Tue, Jul 07, 2015 at 08:25:21AM -0700, Guenter Roeck wrote:
> > On 07/07/2015 02:24 AM, Mark Brown wrote:
>
> > >The main things I'm aware of that are happening at the minute are
> > >kselftest development, the 0day tester, plus kernelci.org and the other
> > >build and boot/test bots that are running against various trees.
>
> > Maybe list all known ones as a start ?
>
> Off the top of my head the automated ones I'm aware of are Olof's build
> & boot test, Dan running smatch and I think some other static analysis
> stuff, someone (not sure who?) running some coccinelle stuff, Coverity
> and I've got a builder too.

The 0day service runs Coccinelle.

Coccinelle does not need the build to succeed.

julia

> > >In terms of discussion topics some of the issues I'm seeing are:
>
> > >  - Can we pool resources to share the workload of running things and
> > >    interpreting results, ideally also providing some central way for
> > >    people to discover what results are out there for them to look at
> > >    for a given kernel in the different systems?
>
> > That might be quite useful. However, I have seen that it doesn't really
> > help to just provide the test results. kissb test results have been
> > available for ages, and people just don't look at it. Even the regular
> > "Build regression" e-mails sent out by Geert seem to be widely ignored.
>
> > What I really found to help is to bisect new problems and send an e-mail
> > to the responsible maintainer and to the submitter of the patch which
> > introduced it. I'd like to automate that with my test system, but
> > unfortunately I just don't have the time to do it.
>
> Yes, that's the "and interpreting" bit in the above - this only really
> works with people actively pushing.  You do start to get people checking
> themselves once things are perceived as something people care about but
> it does take active work to establish and maintain that.
>
> It also really helps if things are delivered promptly, and against trees
> people are actively developing for.  But even with clear reports and
> sometimes patches not everyone shows an interest.  As we get more and
> more actual testing running that's going to start to become more
> serious, breaking the build or boot will also mean that automated tests
> don't get to run.
>
> This is one of the things 0day gets really right, when it kicks in it'll
> e-mail people directly and promptly.
>
> > >  - Should we start carrying config fragments upstream designed to
> > >    support testing, things like the distro config fragments that keep
> > >    getting discussed are one example here but there's other things like
> > >    collections of debug options we could be looking at.  Should we be
> > >    more generally slimming defconfigs and moving things into fragments?
>
> > >and there's always the the perennial ones about what people would like
> > >to see testing for.
>
> > Sharing as many test bot configuration scripts and relevant configurations
> > as possible would be quite helpful. For example, I am building various
> > configurations for all architectures, but I don't really know if they
> > are relevant. Also, I would like to run more qemu configurations,
> > but it is really hard to find working ones.
>
> Grant (just CCed) was working intermittently on the qemu bit.  I think
> the last plan was to enhance the scripts Kevin has for driving his build
> farm.
>

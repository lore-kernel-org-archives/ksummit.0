Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3318CBA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 16:09:33 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 30B1A20F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 16:09:32 +0000 (UTC)
Message-ID: <559BEF61.8050904@roeck-us.net>
Date: Tue, 07 Jul 2015 08:25:21 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>, ksummit-discuss@lists.linuxfoundation.org
References: <20150707092434.GE11162@sirena.org.uk>
In-Reply-To: <20150707092434.GE11162@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
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

On 07/07/2015 02:24 AM, Mark Brown wrote:
> One thing we typically cover at Kernel Summit is some of the activity
> that's going on around testing upstream.  I think it'd be useful to have
> some more of those discussions, both in terms of making people aware of
> what's available and in terms of helping the people doing testing figure
> out what would be useful.  A lot of this is probably well suited to a
> workshop session between the interested people but I do think some
> element in the core day beyond just a readout will be useful.
>
> The main things I'm aware of that are happening at the minute are
> kselftest development, the 0day tester, plus kernelci.org and the other
> build and boot/test bots that are running against various trees.
>
Maybe list all known ones as a start ?

> In terms of discussion topics some of the issues I'm seeing are:
>
>   - Can we pool resources to share the workload of running things and
>     interpreting results, ideally also providing some central way for
>     people to discover what results are out there for them to look at
>     for a given kernel in the different systems?
>
That might be quite useful. However, I have seen that it doesn't really
help to just provide the test results. kissb test results have been
available for ages, and people just don't look at it. Even the regular
"Build regression" e-mails sent out by Geert seem to be widely ignored.

What I really found to help is to bisect new problems and send an e-mail
to the responsible maintainer and to the submitter of the patch which
introduced it. I'd like to automate that with my test system, but
unfortunately I just don't have the time to do it.

>   - Should we start carrying config fragments upstream designed to
>     support testing, things like the distro config fragments that keep
>     getting discussed are one example here but there's other things like
>     collections of debug options we could be looking at.  Should we be
>     more generally slimming defconfigs and moving things into fragments?
>
> and there's always the the perennial ones about what people would like
> to see testing for.
>

Sharing as many test bot configuration scripts and relevant configurations
as possible would be quite helpful. For example, I am building various
configurations for all architectures, but I don't really know if they
are relevant. Also, I would like to run more qemu configurations,
but it is really hard to find working ones.

Guenter

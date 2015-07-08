Return-Path: <mpe@ellerman.id.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C028AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 09:27:29 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ACFAE118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 09:27:28 +0000 (UTC)
Message-ID: <1436347639.29626.4.camel@ellerman.id.au>
From: Michael Ellerman <mpe@ellerman.id.au>
To: Guenter Roeck <linux@roeck-us.net>
Date: Wed, 08 Jul 2015 19:27:19 +1000
In-Reply-To: <559BEF61.8050904@roeck-us.net>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org,
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

On Tue, 2015-07-07 at 08:25 -0700, Guenter Roeck wrote:
> On 07/07/2015 02:24 AM, Mark Brown wrote:
> > One thing we typically cover at Kernel Summit is some of the activity
> > that's going on around testing upstream.  I think it'd be useful to have
> > some more of those discussions, both in terms of making people aware of
> > what's available and in terms of helping the people doing testing figure
> > out what would be useful.  A lot of this is probably well suited to a
> > workshop session between the interested people but I do think some
> > element in the core day beyond just a readout will be useful.
> >
> > In terms of discussion topics some of the issues I'm seeing are:
> >
> >   - Can we pool resources to share the workload of running things and
> >     interpreting results, ideally also providing some central way for
> >     people to discover what results are out there for them to look at
> >     for a given kernel in the different systems?
>
> That might be quite useful. However, I have seen that it doesn't really
> help to just provide the test results. kissb test results have been
> available for ages, and people just don't look at it.

My concern with kisskb sending emails was always that I didn't want it to
become a spam bot. So it can send emails, but it's opt-in.

The 0-day bot takes the opposite approach, ie. mails everyone without asking,
and in hindsight that is clearly the better option in terms of getting people
to act on the results.


> Sharing as many test bot configuration scripts and relevant configurations
> as possible would be quite helpful. For example, I am building various
> configurations for all architectures, but I don't really know if they
> are relevant.

Agreed. Your buildbot is epic. I'd love to see the config for that. My local
buildbot is running only ~40 builders, which I thought was a lot until I saw
yours :)

The kernelci.org stuff is also really interesting, that's the closest thing
anyone has at the moment to a "proper" kernel CI setup AFAIK.

cheers

Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B87C7891
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 21:28:30 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 18BDC248
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 21:28:30 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id k3so2505410ita.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Jul 2017 14:28:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170706145346.6w2uzcf7xacbr3or@thunk.org>
References: <20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705112707.54d7f345@gandalf.local.home>
	<c782a15a-4e73-7373-ca66-5b55e9406059@roeck-us.net>
	<20170705130200.7c653f61@gandalf.local.home>
	<20170706092836.ifcnc2qqwufndhdl@sirena.org.uk>
	<CAKMK7uFH+Kz8Mdph=J_FCZ4LC3tzoOmwNJPpSO+snTz6p0Xz+w@mail.gmail.com>
	<20170706145346.6w2uzcf7xacbr3or@thunk.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 6 Jul 2017 23:28:28 +0200
Message-ID: <CAKMK7uGQz8soDJ-+eLnDArx382jiMAWeFwrJK_LxJkWYJ6DKmQ@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Carlos O'Donell <carlos@redhat.com>,
	"open list:ABI/API" <linux-api@vger.kernel.org>,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 6, 2017 at 4:53 PM, Theodore Ts'o <tytso@mit.edu> wrote:
> On Thu, Jul 06, 2017 at 11:41:39AM +0200, Daniel Vetter wrote:
>> +1. That pretty much means large-scale CI. The i915 test suite has
>> suffered quite a bit over the past years because the CI infrastructure
>> didn't keep up. Result is that running full CI kills pretty much every
>> platform there is eventually, and it's really hard to get back to a
>> state where the testsuite can be used to catch regressions again.
>
> I assume the i915 test suite requires real hardware and can't be run
> on VM's; is that correct?

Yes, that's another problem. If all bigger teams/subsystems would do
what we'd do, but extended to all mailing lists, your patch series
would get replies from a few hundred CI farms. Not sure that would
scale ... And there's no way ever that one single entity will have
hardware for everything.

And if you only CI the mailing list for your own subsystem then every
time a merge window happens your CI will be out of service (4.13 seems
extremely bad, atm nothing survives an extended run on linux-next for
us).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

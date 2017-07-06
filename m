Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 888AFA85
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 09:41:41 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 09FC6A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 09:41:40 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id v193so18183040itc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Jul 2017 02:41:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170706092836.ifcnc2qqwufndhdl@sirena.org.uk>
References: <20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705112707.54d7f345@gandalf.local.home>
	<c782a15a-4e73-7373-ca66-5b55e9406059@roeck-us.net>
	<20170705130200.7c653f61@gandalf.local.home>
	<20170706092836.ifcnc2qqwufndhdl@sirena.org.uk>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 6 Jul 2017 11:41:39 +0200
Message-ID: <CAKMK7uFH+Kz8Mdph=J_FCZ4LC3tzoOmwNJPpSO+snTz6p0Xz+w@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Carlos O'Donell <carlos@redhat.com>,
	"open list:ABI/API" <linux-api@vger.kernel.org>,
	Shuah Khan <shuahkh@osg.samsung.com>,
	Thorsten Leemhuis <linux@leemhuis.info>
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

On Thu, Jul 6, 2017 at 11:28 AM, Mark Brown <broonie@kernel.org> wrote:
> On Wed, Jul 05, 2017 at 01:02:00PM -0400, Steven Rostedt wrote:
>> Guenter Roeck <linux@roeck-us.net> wrote:
>
>> > If a test to reproduce a problem exists, it might be more beneficial to suggest
>> > to the patch submitter that it would be great if that test would be submitted
>> > as unit test instead of shaming that person for not doing so. Acknowledging and
>> > praising kselftest submissions might help more than shaming for non-submissions.
>
>> > My concern would be that once the shaming starts, it won't stop.
>
>> I think this is a communication issue. My word for "shaming" was to
>> call out a developer for not submitting a test. It wasn't about making
>> fun of them, or anything like that. I was only making a point
>> about how to teach people that they need to be more aware of the
>> testing infrastructure. Not about actually demeaning people.
>
> I think before anything like that is viable we need to show a concerted
> and visible interest in actually running the tests we already have and
> paying attention to the results - if people can see that they're just
> checking a checkbox that will often result in low quality tests which
> can do more harm than good.

+1. That pretty much means large-scale CI. The i915 test suite has
suffered quite a bit over the past years because the CI infrastructure
didn't keep up. Result is that running full CI kills pretty much every
platform there is eventually, and it's really hard to get back to a
state where the testsuite can be used to catch regressions again.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

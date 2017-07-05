Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8F291CA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 18:17:08 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 80BD51CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 18:17:07 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id k3so14353366ita.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Jul 2017 11:17:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170705103658.226099c6@gandalf.local.home>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<20170705143341.oees22k2snhtmkxo@sirena.org.uk>
	<20170705103658.226099c6@gandalf.local.home>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 5 Jul 2017 20:17:05 +0200
Message-ID: <CAKMK7uF=mMHYfDSv2PfPT1xx6nrL8DEAk3XSyZZ6qfxRZXRVKg@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
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

On Wed, Jul 5, 2017 at 4:36 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Wed, 5 Jul 2017 15:33:41 +0100
> Mark Brown <broonie@kernel.org> wrote:
>> On Wed, Jul 05, 2017 at 04:06:07PM +0200, Greg KH wrote:
>> > I don't mean to poo-poo the idea, but please realize that around 75% of
>> > the kernel is hardware/arch support, so that means that 75% of the
>> > changes/fixes deal with hardware things (yes, change is in direct
>> > correlation to size of the codebase in the tree, strange but true).
>>
>> Then add in all the fixes for concurrency/locking issues and so on
>> that're hard to reliably reproduce as well...
>
> All tests should be run with lockdep enabled ;-)  Which a surprising
> few developers appear to do :-p

We're slowly working towards running the i915 testsuite with kasan
enabled as the next level of evil. It's ... interesting, to say the
least.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

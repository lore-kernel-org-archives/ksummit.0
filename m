Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4D069898
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 18:29:53 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CA0EA26A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 18:29:52 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id o202so15168634itc.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Jul 2017 11:29:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170705153259.GA7265@kroah.com>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705153259.GA7265@kroah.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 5 Jul 2017 20:29:51 +0200
Message-ID: <CAKMK7uEBB0jLyr0vfXcJ5U1peSfyPYOkMJ9+2FG7Evtznz+7bg@mail.gmail.com>
To: Greg KH <greg@kroah.com>
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

On Wed, Jul 5, 2017 at 5:32 PM, Greg KH <greg@kroah.com> wrote:
> On Wed, Jul 05, 2017 at 08:16:33AM -0700, Guenter Roeck wrote:
>> If we start shaming people for not providing unit tests, all we'll accomplish is
>> that people will stop providing bug fixes.
>
> Yes, this is the key!
>
> Steven, just look at everything marked with a "Fixes:" or "stable@" tag
> from 4.12-rc1..4.12 and try to determine how you would write a test for
> the majority of them.
>
> Yes, for some subsystems this can work (look at xfstests as one great
> example for filesystems, same for the i915 tests), but for the majority
> of the kernel, at this point in time, it doesn't make sense.
>
> So take Carlos's advice, start small, do it for your subsystem if you
> don't touch hardware (easy peasy, right?), and let's see how it goes,
> and see if we have the infrastructure to do it even today.  Right now,
> kselftests is finally getting a unified output format, which is great,
> it shows that people are starting to use and rely on it.  What else will
> we need to make this more widely used, we don't know yet...

This is very hard work and takes a long time. Since 3 years I'm trying
to establish the i915 test suite as an overall drm validation set. At
least the generic parts like for the cross-driver kernel modeset
interfaces, but also allowing other drivers to test their hw specific
command submission. It's very slow going ...
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

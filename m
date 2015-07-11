Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E778DAAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 00:00:05 +0000 (UTC)
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2054215E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 00:00:05 +0000 (UTC)
Received: by wifm2 with SMTP id m2so58722446wif.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 17:00:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150710205418.GB10533@cloud>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<20150710205418.GB10533@cloud>
Date: Fri, 10 Jul 2015 17:00:03 -0700
Message-ID: <CAPcyv4iMWedb18mj5oNpx9KTpryrgFS29rSctQyervAh-R=ecw@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
To: josh@joshtriplett.org
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
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

On Fri, Jul 10, 2015 at 1:54 PM,  <josh@joshtriplett.org> wrote:
> On Fri, Jul 10, 2015 at 03:51:44PM -0400, Steven Rostedt wrote:
>> On Thu, 9 Jul 2015 19:07:06 -0700
>> Darren Hart <dvhart@infradead.org> wrote:
>> > As far as recruitment goes, I think we're talking about barriers to first-timers
>> > and such - and git-send-email is one of those things. Eventually, a developer
>>
>> +1000
>>
>> I still don't use git-send-email, as I afraid that I'll blow it and end
>> up sending a thousand patches to every developer that ever touched the
>> kernel ;-)
>
> I don't use git-send-email either.  I use git-format-patch
> --cover-letter --thread, and then mutt -H to individually send each
> mail.  (I originally added the --thread and --in-reply-to options to
> git-format-patch, so that you don't need to use git-send-email for
> that.)
>
> The one thing I *do* find annoying is that the combination of
> format-patch and get_maintainers.pl can't easily say "I want to send all
> the patches and the cover letter to the same set of people, based on
> every patch".  (Or, at the very least, the cover letter to everyone.)
> Otherwise, maintainers get one patch out of the series, which may be
> confusing without context, and the cover letter doesn't go to anyone.
> Unfortunately, fixing that then tends to hit LKML's limit on number of
> recipients.
>

I carry this patch on top of StGit for exactly this purpose.

commit 562aca51a303e841a76defc3148db5c69b688994
Author: Dan Williams <dan.j.williams@intel.com>
Date:   Thu Feb 27 11:54:32 2014 -0800

    mail: auto cc cover letter to union of all attribution tags in a series

    If a receiver is only copied on the a single patch out of a larger
series she
    may not have the necessary context to judge the patch.  Auto cc her on the
    cover letter.

    Signed-off-by: Dan Williams <dan.j.williams@intel.com>

diff --git a/stgit/commands/mail.py b/stgit/commands/mail.py
index e641634981d6..d986b805dbc4 100644
--- a/stgit/commands/mail.py
+++ b/stgit/commands/mail.py
@@ -534,8 +534,18 @@ def __build_cover(tmpl, msg_id, options, patches):
     except Exception, ex:
         raise CmdException, 'template parsing error: %s' % str(ex)

+    extra_cc = []
+    if options.auto:
+        for patch in patches:
+            p = crt_series.get_patch(patch)
+            if p.get_description():
+                descr = p.get_description().strip()
+                extra_cc.extend(__get_signers_list(descr))
+        extra_cc = list(set(extra_cc))
+
+
     if not options.git:
-        __build_address_headers(msg, options)
+        __build_address_headers(msg, options, extra_cc)
     __build_extra_headers(msg, msg_id, options.in_reply_to)
     __encode_message(msg)

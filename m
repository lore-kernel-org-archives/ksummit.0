Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3D99F895
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 11:58:18 +0000 (UTC)
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8706E201BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 11:58:17 +0000 (UTC)
Received: by mail-ig0-f179.google.com with SMTP id hn18so2210507igb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 05 Jun 2014 04:58:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <539051E4.3040708@hitachi.com>
References: <537F3551.2070104@hitachi.com> <20140528153702.GU23991@suse.de>
	<20140528185748.GA30673@kroah.com>
	<CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
	<20140605002331.GB24037@kroah.com> <20140605065455.GM10819@suse.de>
	<CAMuHMdVG+vinqgLgNCgNqNUpSb4RDWFMJ=UsAL0+2RbXnjefig@mail.gmail.com>
	<CAKMK7uHpE0RrK+T2NbsefrJMwobrEqiXuYjrn3=gHHbmjsXoJQ@mail.gmail.com>
	<539051E4.3040708@hitachi.com>
Date: Thu, 5 Jun 2014 13:58:16 +0200
Message-ID: <CAKMK7uGNyXrRuRj0p_zRVdsjs-kcvW-+VTJWkEUc7Cqu-SNjCw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jun 5, 2014 at 1:17 PM, Masami Hiramatsu
<masami.hiramatsu.pt@hitachi.com> wrote:
> (2014/06/05 17:53), Daniel Vetter wrote:
>> On Thu, Jun 5, 2014 at 10:30 AM, Geert Uytterhoeven
>> <geert@linux-m68k.org> wrote:
>>> On Thu, Jun 5, 2014 at 8:54 AM, Mel Gorman <mgorman@suse.de> wrote:
>>>> There is a hazard that someone bisecting the tree would need to be careful
>>>> to not bisect LTP instead.
>>>
>>> That may actually be a good reason not to import LTP...
>>> I'd imagine you usually want to bisect the kernel to find when a regression
>>> was introduced in the syscall API.
>>>
>>> Is there a reason not to run the latest version of LTP (unless bisecting
>>> LTP ;-)? The syscall API is supposed to be stable.
>>
>> Same for validating backports - you want the latest testsuite to make
>> sure you don't miss important fixes. Downside is that the testsuite
>> needs to be compatible over a much wider range of kernels to be
>> useful, which is a pain for e.g. checking that garbage in reserved
>> fields (like reserved flags) are properly rejected on each kernel
>> version.
>
> Perhaps, the testsuite can recognize which patch is merged or not
> if it can access the git repository by "git log | grep <commit-id>"
> or something like that. Then, it can self-configure to reject
> non-supported test. :)

Well we have feature flags and stuff (need them anyway) and magic
macros to skip tests if something isn't there/supported. So (at least
for us) not a technical issue at all. The problem is in getting these
tests right in all cases and maintaining them while updating tests for
new features.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

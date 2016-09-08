Return-Path: <mhiramat@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F1A9E943
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Sep 2016 03:13:29 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7956D1B2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Sep 2016 03:13:29 +0000 (UTC)
Date: Thu, 8 Sep 2016 12:13:24 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Shuah Khan <shuahkhan@gmail.com>
Message-Id: <20160908121324.7139b9f4f150e128e4c5229c@kernel.org>
In-Reply-To: <CAKocOON-REZwmQZGsnmqKEo2WJshAn7AbeRC-bZx2CEumRL14w@mail.gmail.com>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<CAKocOON-REZwmQZGsnmqKEo2WJshAn7AbeRC-bZx2CEumRL14w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
 stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 6 Sep 2016 15:05:04 -0600
Shuah Khan <shuahkhan@gmail.com> wrote:

> On Tue, Sep 6, 2016 at 12:51 PM, Al Viro <viro@zeniv.linux.org.uk> wrote:
> >         Right now there is no mechanism for saying "if this tracepoints
> > breaks, it's Not Our Problem(tm)".  All of them are parts of userland
> > ABI, potentially casting in stone all kinds of kernel internals.  E.g.
> > just today a patch series adding tracepoints to kobject primitives
> > had been posted; if _that_ becomes a part of stable ABI, we get the
> > lifetime rules for anything with an embedded kobject exposed to userland
> > and potentially impossible to change - all it takes is a single piece of
> > software making non-trivial use of those.
> 
> I honestly didn't think that my patch series will result in a special
> KS topic :)
> However, I think it is a good idea to discuss it as general topic for
> what kind of
> kernel information should/should not be made visible via tracepoints or other
> debug mechanisms.

Hmm, what the "information" means? I think there are 2 level of information
the "formal" information and "semantic" information. Tracepoints, debuginfo,
etc. provided by technical path are formal, and nobody can give the semantic
one.

For example, if we see an "unsigned long flags" in the code, we can understand
that is unsigned integer value and the size will be 32bit or 64bit depends on
CPU architecture. However, we can not know what the value means in the context
except for reading code or comment. It can be used for storing irq-flags, or
conditional flags, or rarely used for counting something. And also, we may not
know what will happened if the value is changed, except for precise documents etc.

One possible way to solve this is adding a kerneldoc entry for each tracepoint
so that we can understand what it means. However, it is still not enough for
keeping userspace program, because the "meaning" may not be machine readable.

Another possible solution is keeping the information meaning fixed with
its context (iow, make it stable), and write a manpage. But IMHO, it leads
to haedening of the arteris of the kernel desgin.

So, I would like to recommend someone who are using this kind of "information"
keep thier code update for newer kernel or contribute it (including test code)
to kernel tree, so that making it easy to fix/update (or abandon ... if the
context which tool depends on, is totally changed) it.

> We do support a wide range of tracepoints and events in various sub-systems
> skb.h, pagemap.h, and pagemap.h so on. Maybe it would be helpful to agree
> on some sort of guidelines for exposure.

How about adding a kerneldoc comment for each event as I described above?
I don't like to expose it via debugfs or tracefs, but maybe we can distribute
it as documents with kernel.

Thank you,


-- 
Masami Hiramatsu <mhiramat@kernel.org>

Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E6364EE1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 18:24:16 +0000 (UTC)
Received: from mail-yw1-f66.google.com (mail-yw1-f66.google.com
	[209.85.161.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4A9D67A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 18:24:16 +0000 (UTC)
Received: by mail-yw1-f66.google.com with SMTP id l9-v6so4429391ywc.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 11:24:16 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com.
	[209.85.219.177]) by smtp.gmail.com with ESMTPSA id
	f82-v6sm2111188ywf.58.2018.09.06.11.24.13
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Sep 2018 11:24:13 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id j8-v6so4485601ybg.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 11:24:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180905222437.5d2a1730@vmware.local.home>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
From: Kees Cook <keescook@chromium.org>
Date: Thu, 6 Sep 2018 11:24:11 -0700
Message-ID: <CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
	replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 5, 2018 at 7:24 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Thu, 6 Sep 2018 09:41:58 +1000
> Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
>> Hi all,
>>
>> On Wed, 5 Sep 2018 15:57:02 -0700 Kees Cook <keescook@chromium.org> wrote:
>> >
>> > I'd like to discuss ways that we could deprecate APIs more sanely. At
>> > present I've seen (and used) two approaches, fast and slow:
>>
>> As the one who often has the "fun" of coping with API changes, I would
>> like to be involved in this discussion.
>>
>> My first point would be that (almost) every time someone has tried the
>> "ultra fast" method (i.e. add new interface, convert everyone in the
>> current kernel, remove the old interface all in one go) we have had new
>> users of the old interface introduced at the same time.  (pain for the
>> linux-next bunny :-()
>
> Can this be solved with a script on kernel.org? Or a zero-day bot that
> checks new commits (and perhaps patches to LKML) that checks for
> deprecated functions being added by new code (like strcpy) and the
> author would then get a nasty email about adding deprecated interfaces.
>
> This would solve the issue of not everyone using the latest checkpatch,
> as this wouldn't be a voluntary self-check. It would also quickly
> educate developers on what code is not acceptable to be added.

I think this boils down to how our development ecosystem works. Things
are pretty "voluntary" right now: one could easily ignore zero-day or
checkpatch all the time, and if a maintainer isn't checking these
things, a patch will go in.

I had two ideas recently. First, the more "social contract" one:

If there was an agreement by all maintainers that deprecated
functions/patterns should not be added, and we documented the
deprecation somewhere like Documentation/process/deprecated.rst, then
we could make the declaration that if such functions got added (it's
easy to mechanically check for them), it would be the responsibility
of the author and maintainer chain to see that it got fixed before the
release is cut. We already have this for things like "breaks the x86
allmodconfig build" or similar. The checking would be manual, and the
enforcement would be by agreement, but it'd be better than the kind of
"please don't do this" hand-waving we've had in the past.

Then there's the magical future CI idea, which builds on a bit more
automation without giving up our agency as maintainers:

If we designed a "minimum sanity checking" CI system that tracked the
same trees as linux-next, it could perform all the mechanical checking
we decided was proper ("allmodconfig" for every architecture[1],
per-patch buildability, no new instances of deprecated functions, etc
etc), then a given sha from a tree could be queried for "has this
passed CI?" In doing pull requests, etc, a maintainer could declare
stuff like "Please pull up to $SHA from me tree. It has cleared CI."
etc. And the maintainer above could run some sanity check like "curl
https://kernelci.org/check/$SHA | grep passed". And merging things
that didn't pass CI would be frowned upon, etc.

The latter doesn't force us to use different tools (no clicking around
on a web page, just add another command line check), and doesn't make
anyone push trees somewhere new (the CI would pull form linux-next's
list of trees, for example), but it would gain us a centralized view
of "did this tree pass basic checks".

The former idea has the benefit of being immediately doable, given the
will/agreement of the community. The latter might even be possible now
with zero-day if it grew a way to query the state of commits and there
was greater transparency into which tools were running, etc.

-Kees

[1] Not all architectures actually _have_ a buildable allmodconfig.

-- 
Kees Cook
Pixel Security

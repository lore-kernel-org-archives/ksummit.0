Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8D2798A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 17:37:35 +0000 (UTC)
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EBDD82020D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 17:37:34 +0000 (UTC)
Received: by mail-vc0-f172.google.com with SMTP id hr9so2952993vcb.17
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 10:37:34 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <537CDFA4.3030400@zytor.com>
References: <537BA385.6090208@zytor.com> <20140520225301.GC21744@cloud>
	<537BF61A.5010700@kernel.org> <537CDFA4.3030400@zytor.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 21 May 2014 10:37:13 -0700
Message-ID: <CALCETrWybwnfojERuyQuCy=Nroq_CAHL7NQBEZ+shLmOmz5nkw@mail.gmail.com>
To: "H. Peter Anvin" <hpa@zytor.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Services needed from kernel.org
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 21, 2014 at 10:17 AM, H. Peter Anvin <hpa@zytor.com> wrote:
> On 05/20/2014 05:40 PM, Konstantin Ryabitsev wrote:
>> On 20/05/14 06:53 PM, josh@joshtriplett.org wrote:
>>> How feasible is it to support git hooks that want to construct
>>> and send (significant volumes of) email, while retaining the
>>> security and sandboxing currently being applied to git
>>> repositories?
>>
>> It's feasible, but I can't make this a free-for-all, for obvious
>> reasons. :) With gitolite, hooks execute as the same user "git"
>> and therefore any code running inside a hook has unfettered access
>> to all git repositories regardless of in-gitolite repository
>> permissions.
>>
>> What we can do is have a peer-reviewed collection of "blessed"
>> hooks available to developers. Not being a kernel dev myself, I'm
>> not the one to put such a collection together, though -- I'm not
>> even sure if such a cookie-cutter approach would be suitable.
>>
>> I guess what I'm really trying to say is that I'd rather avoid
>> having to continuously review code written by people to whom "you
>> write perl like it's C" is a compliment. ;) If we can get by with a
>> handful of standard hooks, I'm for it, though.
>>
>
> Hmm... I resemble that remark.
>
> That being said, there is no fundamental reason that email generator
> have to be run on the master copy.  It can be run on an entirely
> different box, which doesn't even need any kind of privileged access
> to the machinery; this is how the tip-bot runs: it is just a "regular
> puller" of the tip tree, using the publicly accessible git port.  This
> does add some latency, but has the advantage that it sends out the
> emails once the commits are actually visible to general users upstream.
>
> Generalizing the tip-bot is probably not that hard.  I already use
> variants of it for multiple projects.  It does have a *lot* of
> configuration options, though, some of which are in the form of
> scripts.  This pretty much means that in its current form it is
> equivalent to a shell account and would have to be sandboxed accordingly.
>

There *must* be a sensible way to construct a sandbox these days.
Some combination of user namespaces, seccomp, and maybe even a VM
should be quite secure and even fairly easy to use.  Not to mention
that various scripting languages should have viable sandbox modes.

I'm sort of working on a userns-based general-purpose sandbox.  Maybe
I'll have something usable to play with at the kernel summit.

--Andy

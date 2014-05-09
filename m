Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5D1F4A83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 11:50:49 +0000 (UTC)
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8FC1A2010F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 11:50:48 +0000 (UTC)
Received: by mail-qc0-f172.google.com with SMTP id l6so4375367qcy.17
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 04:50:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140509073328.36ac0b42@tlielax.poochiereds.net>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140509073328.36ac0b42@tlielax.poochiereds.net>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date: Fri, 9 May 2014 13:50:26 +0200
Message-ID: <CAKgNAkh9y4h4PQJJWyyBLM=QFse7sj0GsRDoE4O9OtV9fmGOtg@mail.gmail.com>
To: Jeff Layton <jlayton@poochiereds.net>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
Reply-To: mtk.manpages@gmail.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 9, 2014 at 1:33 PM, Jeff Layton <jlayton@poochiereds.net> wrote:
> On Tue, 6 May 2014 10:45:05 -0700
> Andy Lutomirski <luto@amacapital.net> wrote:
>
>> There doesn't currently seem to be any real process for reviewing new
>> core APIs for sanity of design, appropriateness to solve the problem
>> they're targetting, or correctness of implementation.  Some examples
>> that come to mind recently:
>>
>>  - A lot of people seem to think that O_TMPFILE is a terrible
>> interface, despite the fact that the functionality it provides is very
>> useful.  It was also rather badly broken until -rc8 or so.
>>
>>  - The x86 32-bit vdso clock functions almost made it in with a
>> questionable symbol version.
>>
>>  - 3.15 is currently slated to include an unfortunate ABI glitch in
>> the MIPS seccomp filter interface.  There's a patch.
>>
>>  - There are some aspects of the keyring API that seem to me to be quite bad.
>>
>>  - An impressive number of new APIs are missing -EINVAL returns if
>> reserved parameters are set.
>>
>> (I'm not trying to point a finger at anyone with these examples;
>> they're just things that I was involved in to some extent.)
>>
>> The current process is confused.   For example, I currently plan on
>> trying to remember to ask Linus to revert the MIPS seccomp stuff or
>> fix it sometime around -rc6 if the patch hasn't landed, but this
>> sucks.
>>
>> I think that the process could be improved.  I think that there are
>> people who are willing to spend time to read API docs and thinking
>> about these kinds of issues.  (I am, and Michael Kerrisk seems to do a
>> fair amount of it.)
>>
>> I would like to discuss what we could change to make this work better
>> in the future.  In an ideal world, I would like to see every core API
>> change come with documentation, tests (possibly simple ones), and a
>> post, with acks, to a list that covers just API changes.  This might
>> be tough, but it could add a lot of value.
>>
>> I've occasionally thought that API docs should live in the kernel tree
>> in some reasonably well organized place so that patch sets can include
>> doc patches.  I realize that this is contentious.
>>
>> I'm sure that other people have other suggestions here.
>>
>> --Andy
>>
>> P.S.  I'm not on the invitation nominee list, so if people like this
>> topic, I'd appreciate a nomination :)
>
>
> I'd be interested in discussing this as well.
>
> I just went through a bunch of gyrations with the file-private -> OFD
> file lock renaming. I originally posted these patches over several
> months, but it wasn't until it was merged that people started speaking
> out over the name. Perhaps if I had known about linux-api@ and had
> cc'ed it on those patches, we might have gotten that squared away
> earlier?

Maybe. I think there's also the problem that the number of people
looking at this stuff closely is fairly small. I mean, right now I'm
looking at documenting sched_setattr(), and I've just spotted a second
API bug (Peter Z, you'll get another mail soon ;-)), without too much
effort. That says to me that there probably wasn't anyone who, with
some distance from the implementation, looked very closely at the
details of the API. And that's a loop I've gone though countless times
when writing man pages.

> Also, I'm still interested in getting this driven back into POSIX spec,
> so having a more well-defined way to interact with the POSIX folks
> would be helpful.

Well, your RH colleague Eric Blake would seem to be a good "in"--he's
regularly in on the Austin Group meetings, AFAICT.

> There are some open questions here too, notably: How are we defining
> API/ABI? Clearly a new syscall is a change that needs to be carefully
> vetted. What about a new mount option? Does that qualify?

As in a new MS_* flag to mount(2)? I'd have said yes.

> While I think having a lot of eyes on userland-visible changes is a
> good thing, we need to take heed not to make such a process too formal
> or it'll become painful to deal with.

With my hat off to you, because you did most everything right, I have
to say that when I hear a kernel developer say this, it sounds to me
suspiciously like: "I want someone else to bear the pain". That
someone else is typically a large number of user-space programmers who
end up dealing with bugs and broken APIs for a long time. I don't know
how formal would be too formal, but I think we're a long way from that
point and a away from where we should be in terms of rigor when it
comes to API/ABI changes.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97E43305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 16:18:40 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 49B80E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 16:18:40 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id z67so4151436itb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 09:18:40 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 19 Apr 2017 09:18:39 -0700
Message-ID: <CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
To: Doug Ledford <dledford@redhat.com>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Dave Airlie <airlied@linux.ie>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Apr 19, 2017 at 8:37 AM, Doug Ledford <dledford@redhat.com> wrote:
> On 4/18/2017 4:13 PM, Linus Torvalds wrote:
>>
>> I'm not sure who those people actually are, but I suspect this list
>> contains people who can point to each tech lead.. I think it's Laura
>> Abbott for Fedora, for example?
>
> There really is no pain point for Fedora.  They take a very simple
> approach: in rawhide, they pull latest git once you hit the -rc cycles
> and build it, otherwise it's the latest released kernel; in actual
> releases, they pull stable tree point releases as they are released (not
> long term stable, they upgrade to a new stable tree fairly regularly).
> They really don't do much in the way of having to integrate changes into
> their kernel (intentionally), it's just a constant rolling update game
> using newer and newer tarballs.  So, the pain is not in Fedora, it's in
> RHEL.  What we do there is so totally different from Fedora and hurts so
> bad as a developer...but I don't know if you really care to even talk
> about that at the summit since, to be fair, it's largely a consequence
> of our business model.

Yeah, I don't think we can do much about distros that intentionally
want to stay behind and backport. Admittedly Android seems to be very
much in that camp too, but I'd at least want to talk to them more.
RHEL I feel knows what it's doing and isn't causing the kinds of
issues Android is anyway.

That said, even with Fedora I think Laura was at the KS last year, and
did talk about what she sees as the stable kernel process. So Fedora
may not be a "painpoint", but may well be relevant for the "meet with
people and talk about process issues once a year".

Of course, if it really is a question of "we have no problems and no
reason to even be there" for Fedora, then that's one (or two) less
people to worry about ;)

                Linus

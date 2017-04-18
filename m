Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 07E3BBBE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 20:13:39 +0000 (UTC)
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 81E94204
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 20:13:38 +0000 (UTC)
Received: by mail-it0-f43.google.com with SMTP id 70so2693028ita.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 13:13:38 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <s5hd1c9wl4b.wl-tiwai@suse.de>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 18 Apr 2017 13:13:37 -0700
Message-ID: <CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
To: Takashi Iwai <tiwai@suse.de>
Content-Type: text/plain; charset=UTF-8
Cc: Ingo Molnar <mingo@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Doug Ledford <dledford@redhat.com>, David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Apr 18, 2017 at 12:50 PM, Takashi Iwai <tiwai@suse.de> wrote:
> On Tue, 18 Apr 2017 20:59:37 +0200,
> Linus Torvalds wrote:
>>
>>    Some driver subsystems may be huge (eg media and sound), but I
>> don't know if they have issues. Mauro/Takashi?
>
> In the sound area, majority of commits come from Mark Brown's ASoC
> tree nowadays, and he should be included.  Mark is already in your
> list, so we're covered pretty well by that.

Ok. I don't know how many from that top-50 list we actually would be
able to have.

Not only do I think that we should try to limit it to maybe ~35 people
(random number taken out of thin air, but feels small enough that
people could basically just do it in a smaller room and keep things
personal), but the list is just the 50 kernel maintainer side.

And there's another important side to this if we can make it work: the
*users* of the kernel. Notably I'd really like to have kernel leads
from the main distros, ie Android, Fedora, Suse, Ubuntu.

I think that when we talk about process pain points, we definitely
need to have downstream involved. Greg is there with his stable
maintainer hat on too, but he's still "ours".

It would be really good to have whoever is in charge of the Android
kernel there (not manager, but tech lead), and not make it a blame
game, but really try to also talk about how we could perhaps bridge
that gap somehow.

I'm not sure who those people actually are, but I suspect this list
contains people who can point to each tech lead.. I think it's Laura
Abbott for Fedora, for example?

> Do you plan it to be attached with some major conference, or as a
> stand-alone one?

Oh, I was just assuming people were aware of the kernel summit <->
maintainer summit thing.

So this would be the maintainer side of the traditional kernel summit.

This year it would be October in Prague, co-located with the European
ELC / LinuxCon / OpenSourceSummit thing.

                  Linus

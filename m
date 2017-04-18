Return-Path: <BATV+5c3ddd55659f80f79639+4986+infradead.org+mchehab@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2AAFE955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 21:37:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [65.50.211.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8923518D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 21:37:31 +0000 (UTC)
Date: Tue, 18 Apr 2017 18:15:06 -0300
From: Mauro Carvalho Chehab <mchehab@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170418181506.30de0470@vento.lan>
In-Reply-To: <CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Dave Airlie <airlied@linux.ie>,
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

Em Tue, 18 Apr 2017 13:13:37 -0700
Linus Torvalds <torvalds@linux-foundation.org> escreveu:

> On Tue, Apr 18, 2017 at 12:50 PM, Takashi Iwai <tiwai@suse.de> wrote:
> > On Tue, 18 Apr 2017 20:59:37 +0200,
> > Linus Torvalds wrote:  
> >>
> >>    Some driver subsystems may be huge (eg media and sound), but I
> >> don't know if they have issues. Mauro/Takashi?  

On media side, I convert all pull requests I receive in a quilt tree,
reviewing patch per patch. So, you won't see media sub-maintainers
on a top-50 list based on comitters. Among sub-maintainers, Hans Verkuil 
is doing a great job sub-maintaining V4L2 drivers, with is a significant
amount patches that come via my tree.

With regards to issues, I'd say that everything that touches the
process is relavant to media. Due to its nature, media devices are
very complex, and interact with a lot of subsystems, like DT, arch,
drm, input, network, i2c, staging, docs. So, I'm very interested on
all discussions related to process.

There is one particular issue that occurs to me, although I'm not sure
if it would fit on the new "maintainer summit" format: it is related
to how to group documentation. Also, this is actually Jon's call, but
I suspect that he may want to hear comments from the others.

Right now, all media documents are in a single book.

There is an alternate model of splitting documentation on multiple
documents, like, for example, grouping everything that is driver's API
on a single document that covers multiple subsystems.

While we could try to discuss this sort of thing via ML, I suspect
that this is the sort of thing that would be better to discuss it on
a forum with multiple maintainers, in order to see what would work best
for the main subsystems.

> > In the sound area, majority of commits come from Mark Brown's ASoC
> > tree nowadays, and he should be included.  Mark is already in your
> > list, so we're covered pretty well by that.  
> 
> Ok. I don't know how many from that top-50 list we actually would be
> able to have.
> 
> Not only do I think that we should try to limit it to maybe ~35 people
> (random number taken out of thin air, but feels small enough that
> people could basically just do it in a smaller room and keep things
> personal), but the list is just the 50 kernel maintainer side.
> 
> And there's another important side to this if we can make it work: the
> *users* of the kernel. Notably I'd really like to have kernel leads
> from the main distros, ie Android, Fedora, Suse, Ubuntu.
> 
> I think that when we talk about process pain points, we definitely
> need to have downstream involved. Greg is there with his stable
> maintainer hat on too, but he's still "ours".

Yeah, having a few downstream maintainers there could be interesting,
as we can get feedback about what should be improved in the process.

Thanks,
Mauro

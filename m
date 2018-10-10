Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 777BBC84
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 20:12:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F247178B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 20:12:31 +0000 (UTC)
Date: Wed, 10 Oct 2018 17:12:27 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20181010171227.3f8e681f@coco.lan>
In-Reply-To: <20181010195634.GA2031@localhost>
References: <CABVU7+t4VDg6p4Kq-P6U+epOOoeiy8E5XJ0gxDAJTyfW7h6Y5Q@mail.gmail.com>
	<20181008183423.4bdcaeea@coco.lan>
	<CABVU7+uQCcREk1V_SUve64BA8b=Qz0npUJwXgg=eae4H9++mdA@mail.gmail.com>
	<20181009070736.42b8fea5@coco.lan>
	<D9A3A892-FF4B-4A63-99C9-C29C58AB5AAC@fb.com>
	<CAPcyv4hWMZkS0KMVihL5R99nQp6CAG3wkOfF2nWdVLq9w3bOcQ@mail.gmail.com>
	<CAMuHMdWBWKtZDpdYn0zaWFnF27pnenu6Ha5wq-40QPWE+D-pFQ@mail.gmail.com>
	<20181010105754.0a46e1b3@coco.lan>
	<20181010172111.GA17483@localhost>
	<20181010152811.073c5ca8@coco.lan>
	<20181010195634.GA2031@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 10 Oct 2018 12:56:34 -0700
Josh Triplett <josh@joshtriplett.org> escreveu:

> On Wed, Oct 10, 2018 at 03:28:11PM -0300, Mauro Carvalho Chehab wrote:
> > Em Wed, 10 Oct 2018 10:21:11 -0700
> > Josh Triplett <josh@joshtriplett.org> escreveu:
> > 
> > > On Wed, Oct 10, 2018 at 10:57:54AM -0300, Mauro Carvalho Chehab wrote:
> > > > With regards to (2), I have to add that idiomatic expression violations
> > > > are really hard to be detected by non-native English speakers.
> > > > 
> > > > Recently, I wanted to post about exchanging gpg keys on an event
> > > > we'll have. As this is something that I don't commonly organize, I browsed
> > > > the Internet to check the proper term (it is "key chain party" or
> > > > "key signing party"). On my google search, I omitted one of the words on 
> > > > that phase, and discovered an idiomatic expression that could be argued
> > > > as a CoC violation.  
> > > 
> > > Unintentionally using a phrase like that seems easy enough to handle
> > > with a reply (on-list or off, as appropriate) saying "You might wish to
> > > rephrase that as 'key signing party' or similar, because the phrase you
> > > used is also an idiom with risque connotations."
> > > 
> > > To contrast that with the kind of *intentional* issue that would prompt
> > > a less forgiving response (especially if repeated), consider if someone
> > > submitted a script to manage such parties, named it "key-party", and
> > > filled it with other related innuendo, to the point that there's no
> > > doubt they were doing so intentionally. Sounds ridiculous, and yet there
> > > are plenty of examples of that and worse in FOSS history.
> > 
> > Yes, I know that an unintentional mention would have a completely
> > different treatment. 
> > 
> > The point is that, as a maintainer, if one would write a patch with such
> > expression - or whatever other idiomatic sentence that would have a "hidden"
> > meaning inside it for non native speakers - I would probably end by applying
> > it without I even realize about the issue.
> 
> And the same notion of intent applies there, too. Mistakes happen, and
> when they really are mistakes, that's not a critical issue. I'd assume
> you'd also quickly apply a patch someone sent you to fix it. (By
> contrast with someone who, for instance, might go off on a rant if asked
> to do so.)

Surely, but, except if I receive such fix soon enough, I probably won't
be rebasing the tree (as rebasing a master tree usually causes damage
to a lot of people).

So, the bad wording will stay forever at the git history - and will
probably be backported to -stable too (if stable people won't notice).

Thanks,
Mauro

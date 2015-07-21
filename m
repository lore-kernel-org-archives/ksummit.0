Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 793A242A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 00:26:03 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A3346118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 00:26:01 +0000 (UTC)
Date: Tue, 21 Jul 2015 10:25:50 +1000
From: NeilBrown <neilb@suse.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150721102550.296fb7cb@noble>
In-Reply-To: <1437376515.8968.19.camel@HansenPartnership.com>
References: <20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<55AC5E3B.9040102@huawei.com> <20150720051605.GA10779@x>
	<1437376515.8968.19.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Mon, 20 Jul 2015 08:15:15 +0100 James Bottomley
<James.Bottomley@HansenPartnership.com> wrote:

> On Sun, 2015-07-19 at 22:16 -0700, Josh Triplett wrote:
> > On Mon, Jul 20, 2015 at 10:34:35AM +0800, Zefan Li wrote:
> > > > I.e. I might propose a a slightly controversial topic, going a bit the 
> > > > other direction than the whole "motivating newcomers" discussion: how to 
> > > > get rid of useless submissions that are slowing maintainers down?
> > > > 
> > > 
> > > Do we really have this issue?
> > > 
> > > If we are encouraging more people to get involved in kernel contribution, we'll
> > > sure occasionally see some patches with little value, but I don't think we are
> > > suffering from this.
> > > 
> > > And When we see a patch of this kind, it won't take us much time to tell the
> > > newbie why the patch isn't appropriate, and then he probably won't do this again.
> > 
> > That's exactly the kind of thing that we *shouldn't* do.
> > 
> > Think about that from the new contributor's perspective.  They've made a
> > change to the kernel that has a small but non-zero value.  They've just
> > managed to work out how to jump through all the hoops needed to prepare
> > and submit it properly for the kernel, through some combination of
> > reading, lurking, and mentorship.  And the first response they see is a
> > maintainer like you saying "please don't send this kind of patch".
> > 
> > Yeah, they probably won't do that again.  Congratulations, you defeated
> > the newbie and thwarted their evil maintainer-time-wasting scheme!  Hail
> > the conquering hero; insert victory fanfare here.  If you and others
> > keep up that vigilance, perhaps one day all maintainers can rest easy,
> > knowing they'll never again have to deal with new contributors.
> > 
> > </sarcasm>
> > 
> > It's perfectly reasonable to tell someone that, since they've gotten the
> > hang of sending kernel patches, they should move on to more substantial
> > changes, and leave simpler fixes to other potential new contributors.
> > But that's different than telling them their patch is unwelcome.
> > 
> > (If someone sends in a patch that's actively wrong, sure, go right ahead
> > and tell them what's wrong with it.  But there's a difference between
> > "wrong" and just "not that important".)
> 
> I think that's the wrong attitude in so many ways.  Good teachers don't
> accept crap.  They throw it back at you with precisely the contempt it
> deserves and a note as to how it should be improved.  Accepting less
> than the best encourages mediocrity; it's bad for teaching, bad for
> society and ultimately bad for the individual.

"Good teachers" are sensitive to the context and abilities of their
students.  They aim to help their students further up the ladder, maybe
just one step, maybe all the way to the next landing (but they never mix
their metaphors).
Sometimes that means throwing back crap with contempt.  Sometimes it
means accepting crap because of the value mixed in with it.

If you stick to one style of teaching, you limit yourself to one class
of student.  This is probably inevitable for the individual teacher,
but should not be inevitable for a community of teachers.
Now if only we had a community of teachers rather than a community of
practitioners...



> 
> The constructive way to respond is to explain that this patch doesn't
> add value, so it's not really of the calibre that we're looking for, but
> then pull out one of the longstanding problems in a related area (or
> sometimes something you just spotted looking at the code again) and ask
> if the person would care to have a crack at that.

Certainly *a* constructive way to respond!

Thanks,
NeilBrown

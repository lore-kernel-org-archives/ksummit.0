Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0947B405
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 09:58:15 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CEB3E173
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 09:58:13 +0000 (UTC)
Message-ID: <1437386287.8968.33.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Josh Triplett <josh@joshtriplett.org>
Date: Mon, 20 Jul 2015 10:58:07 +0100
In-Reply-To: <20150720084829.GB11454@x>
References: <20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<55AC5E3B.9040102@huawei.com> <20150720051605.GA10779@x>
	<1437376515.8968.19.camel@HansenPartnership.com>
	<20150720084829.GB11454@x>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
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

On Mon, 2015-07-20 at 01:48 -0700, Josh Triplett wrote:
> On Mon, Jul 20, 2015 at 08:15:15AM +0100, James Bottomley wrote:
> > On Sun, 2015-07-19 at 22:16 -0700, Josh Triplett wrote:
> > > On Mon, Jul 20, 2015 at 10:34:35AM +0800, Zefan Li wrote:
> > > > > I.e. I might propose a a slightly controversial topic, going a bit the 
> > > > > other direction than the whole "motivating newcomers" discussion: how to 
> > > > > get rid of useless submissions that are slowing maintainers down?
> > > > > 
> > > > 
> > > > Do we really have this issue?
> > > > 
> > > > If we are encouraging more people to get involved in kernel contribution, we'll
> > > > sure occasionally see some patches with little value, but I don't think we are
> > > > suffering from this.
> > > > 
> > > > And When we see a patch of this kind, it won't take us much time to tell the
> > > > newbie why the patch isn't appropriate, and then he probably won't do this again.
> > > 
> > > That's exactly the kind of thing that we *shouldn't* do.
> > > 
> > > Think about that from the new contributor's perspective.  They've made a
> > > change to the kernel that has a small but non-zero value.  They've just
> > > managed to work out how to jump through all the hoops needed to prepare
> > > and submit it properly for the kernel, through some combination of
> > > reading, lurking, and mentorship.  And the first response they see is a
> > > maintainer like you saying "please don't send this kind of patch".
> > > 
> > > Yeah, they probably won't do that again.  Congratulations, you defeated
> > > the newbie and thwarted their evil maintainer-time-wasting scheme!  Hail
> > > the conquering hero; insert victory fanfare here.  If you and others
> > > keep up that vigilance, perhaps one day all maintainers can rest easy,
> > > knowing they'll never again have to deal with new contributors.
> > > 
> > > </sarcasm>
> > > 
> > > It's perfectly reasonable to tell someone that, since they've gotten the
> > > hang of sending kernel patches, they should move on to more substantial
> > > changes, and leave simpler fixes to other potential new contributors.
> > > But that's different than telling them their patch is unwelcome.
> > > 
> > > (If someone sends in a patch that's actively wrong, sure, go right ahead
> > > and tell them what's wrong with it.  But there's a difference between
> > > "wrong" and just "not that important".)
> > 
> > I think that's the wrong attitude in so many ways.  Good teachers don't
> > accept crap.
> 
> We don't seem to be talking about the same kind of patches, then.  If
> someone sends in incorrect patches, by all means reject those patches.
> But a patch that improves code, even a very minor improvement, should
> always be welcome.

"Improvement" is probably the issue.  Improvement to me means

     1. Adds a new user visible feature that will have consumers
     2. makes a user visible change that adds value (ideally a bug fix,
        but I think adding extra debug or other interfaces can count
        here)
     3. materially improves the maintainability of the code.

The third one seems to be where there's most disagreement.  Usually the
guideline I use for this is that for older files is just don't touch.
If someone really wants to improve the file then they get to maintain it
as well (we've had some success with this) otherwise generally such
patches aren't welcome.

> (This doesn't mean that mechanically fixing compiler warnings, for
> instance, is always an improvement.  For instance, shutting up the
> compiler rather than actually fixing the warning is not a good idea.
> But when the patch actually fixes something, even something minor, it's
> worth accepting.)

I don't agree that all improvements, however minor are worthwhile.
There's a cost to reviewing and merging ... that should be outweighed by
the value of the contribution.  The scarcest thing we have is review
bandwidth and we shouldn't waste it on minor improvements that are very
minor.  That said, I also don't direct or control the reviewers and they
mostly tend to concentrate on what they consider to be interesting
stuff, so I often find that patches like this often languish for lack of
review ... that's a good opportunity to point out that a more
substantive change would receive more attention.

James

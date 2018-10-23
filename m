Return-Path: <viro@ftp.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D86BC8BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Oct 2018 03:31:37 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3FB96623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Oct 2018 03:31:36 +0000 (UTC)
Date: Tue, 23 Oct 2018 04:31:30 +0100
From: Al Viro <viro@ZenIV.linux.org.uk>
To: NeilBrown <neil@brown.name>
Message-ID: <20181023033130.GQ32577@ZenIV.linux.org.uk>
References: <20181020134908.GA32218@kroah.com>
	<87y3ar80ac.fsf@notabene.neil.brown.name>
	<20181021222608.GA24845@localhost>
	<875zxt919d.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875zxt919d.fsf@notabene.neil.brown.name>
Sender: Al Viro <viro@ftp.linux.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mishi Choudhary <mishi@linux.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Call to Action Re: [PATCH 0/7] Code of
 Conduct: Fix some wording, and add an interpretation document
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 23, 2018 at 07:26:06AM +1100, NeilBrown wrote:

> Currently if a maintainer is rude to you, there is no where else that
> you can go and *that* is why it hurts.  It isn't the abuse so much as
> the powerlessness associated with it.  If you can (metaphorically) say
> to that maintainer "I don't care about your toilet mouth, you've just
> given me the right to take my petition to caesar" - then the emotional
> response will be quite different to pain.

Bollocks.  First of all, you *always* can take patches to Linus, even if
maintainer is being the sodding Miss Manners.  Always could.  What you
can't (and shouldn't be able to) is to _force_ a piece of shit patch
(pardon the toilet mouth) into the tree on the grounds of maintainer having
been "rude" to your patch.

Again, you can and always could appeal to Linus if your patches are wrongly
rejected, in your opinion.  You'd better have good evidence supporting the
"wrongly" bit in that case, but the "right to petition" model implies that
anyway.

If you are talking about the situations when "rude" maintainer makes insufferable
requests to one's precious patches (e.g. demonstrates his or her mental inferiority
by admitting that they are unable to follow contributor's 0.5KLoC of spaghetty in a
single function and has an unspeakable gall to demand to clean it up - instead of
passing that task upon the interns, as they ought to[1])... sure, that would be
something new.  Would you care to be the person charged with dealing with such...
valuable contributors?  And how good is the coverage of psychiatric treatments
offered by your medical insurance?

[1] no, I'm not making it up
 
> If Linus is not true to his new-found sensitivity, we might need someone
> (Greg?) to be a co-maintainer, able to accept patches when Linus has a
> relapse.  It might be good form to create this channel anyway, but I
> doubt it would be needed in practice.
> 
> So there you have it. The "Code" is upside down.
> We need documents which:
>   - curtail the power of the strong, starting with Linus
>   - are adopted willingly by individuals, not imposed on the community.
>   - provide alternate routes for patch-flow, so that no-one has ultimate
>     power.

Really?  The ultimate power being to say "No" to a patch, and nobody should
have such?  Are you fucking serious?

PS: All together, now -

Every Patch is Sacred,
Every Patch is Great,
If a Patch Is Wasted,
Neil Gets Quite Irate

may the filking begin...

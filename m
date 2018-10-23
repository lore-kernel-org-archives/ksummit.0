Return-Path: <viro@ftp.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 796FC7F6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Oct 2018 06:01:10 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 385DE7DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Oct 2018 06:01:09 +0000 (UTC)
Date: Tue, 23 Oct 2018 07:00:59 +0100
From: Al Viro <viro@ZenIV.linux.org.uk>
To: NeilBrown <neil@brown.name>
Message-ID: <20181023060059.GW32577@ZenIV.linux.org.uk>
References: <20181020134908.GA32218@kroah.com>
	<87y3ar80ac.fsf@notabene.neil.brown.name>
	<20181021222608.GA24845@localhost>
	<875zxt919d.fsf@notabene.neil.brown.name>
	<20181023033130.GQ32577@ZenIV.linux.org.uk>
	<87r2gh70ij.fsf@notabene.neil.brown.name>
	<20181023045247.GV32577@ZenIV.linux.org.uk>
	<87o9bl6xlo.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87o9bl6xlo.fsf@notabene.neil.brown.name>
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

On Tue, Oct 23, 2018 at 04:28:03PM +1100, NeilBrown wrote:

> > If that's a clarification, I'm sorry to say that I understand you even less now.
> > What are you proposing?  Duopoly?  How do you deal with disagreements?  Fork?
> > Revert wars?
> 
> We already have team-maintainership arrangements - doing the same thing
> at the top level should not be that hard to imagine.
> 
> It really about "saying" no.  I suspect all members of a team would come
> to much the same decision about any given patch, but they might "say" it
> differently.  One might say "anyone who wrote this should be
> lobotomised", and the other might say "I see what you are trying to do,
> but the approach won't work - go look at how we handle XXXX, they have a
> similar problem".  Neither will accept the patch, and they will probably
> both accept it after certain changes.  But when one of them is having a
> bad day, I would like people to have the explicit opportunity to ignore
> them and talk to the other.  Yes, they'll still get "no" twice, but they'll
> also get something approaching sane review least once.

You still have not answered the question I've asked - what to do in case of
real disagreements, seeing that "pass it to Linus for final decision" obviously
doesn't work here.  And while we are at it, what to do in case when "they"
_agree_ that patch is unsalvagable?  I'm quite sure that you can think of
examples of such...

BTW, out of curiosity - when has anyone suggested lobotomies[1]?  I'd like to see
details - got to be interesting...

[1] on kernel development lists, that is - I can think of examples in e.g.
NANAE circa '98 or so regarding the SGI employees responsible for sendmail
setup they used to ship in IRIX, but that was more of a possible explanation
of the reasons rather than suggested remedy...

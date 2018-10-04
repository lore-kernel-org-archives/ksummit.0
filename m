Return-Path: <viro@ftp.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 617C2C11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Oct 2018 20:40:00 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C57E180E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Oct 2018 20:39:59 +0000 (UTC)
Date: Thu, 4 Oct 2018 21:39:57 +0100
From: Al Viro <viro@ZenIV.linux.org.uk>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20181004203956.GR32577@ZenIV.linux.org.uk>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6108593.JtmfA2IdsK@avalon>
Sender: Al Viro <viro@ftp.linux.org.uk>
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

On Thu, Oct 04, 2018 at 09:33:15PM +0300, Laurent Pinchart wrote:

> Another point that I believe is important is the issue of representation. The 
> code of conduct mentions both "project" and "community". While neither are 
> defined, the term project is quite straightforward, but the term community not 
> really so. The code of conduct gives a mandate to the TAB to handle 
> enforcement in the name of the project (I don't want to focus here on whether 
> the TAB is the right instance to handle those issues, this will likely be 
> discusses separately and possibly be changed, I will just use TAB here to 
> refer to the code of conduct enforcement body for simplicity), and I would 
> argue that the mandate extends to representing the community as a whole. When 
> the TAB will have to decide on a case that will generate a wide diversity of 
> opinions, what kind of process can we put in place to ensure that all 
> community members will feel represented (and thus heard) ? To put it 
> differently, how can we make sure that the community members who don't fully 
> agree with the final decision will agree to disagree and still feel part of 
> the community ?

Community, shmonunity...  Here's a scenario:

	* contributor Alice gets banned from contributing, for whatever reason
	* Alice finds a roothole and posts a technically valid fix
	* maintainer Bob sees the posting, verifies that the bug is real, that
the fix is correct and that the source of that patch is banned.

What should Bob do?  Discuss.  And piss on Mozilla, Eich, options, etc. - they
are irrelevant.  The above isn't, and it's going to happen sooner or later if
the bans are not going to stay pure theory.

Note that "commit the fix without mentioning Alice" isn't a viable option.  And
"design a different fix and commit that without mentioning Alice" isn't any
better, especially if the same thing keeps repeating.  And "send Alice to Place
de la Revolution to make sure that this stops" is not an option either - TAB
isn't CSP and the guillotine got retired, anyway.

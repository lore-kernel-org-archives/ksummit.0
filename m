Return-Path: <vbabka@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 47815F7E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 09:09:58 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CAD088A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 09:09:56 +0000 (UTC)
To: Linus Torvalds <torvalds@linux-foundation.org>,
	"Theodore Y. Ts'o" <tytso@mit.edu>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <5801d0a8-a7c5-559e-7d92-3a233b00d9f7@suse.cz>
Date: Fri, 23 Aug 2019 11:09:53 +0200
MIME-Version: 1.0
In-Reply-To: <CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 8/23/19 4:58 AM, Linus Torvalds wrote:
> So yes, I'd *much* rather see that "Link" line than try to make a
> "Change-ID" line be a thing.
> 
> Of course, looking at that particular link, my initial reaction is
> "people are bad spellers". The word 'amend' has a single 'm' ;)
> 
> And it _is_ important that the link in question is stable, of course.
> Some systems have problems with that. Is that "c/1158" actually a
> stable long-lived name that will stay around as the thing is modified?
> I don't know how that system works.

Looks like there are also links that include the change-id, and redirect
to the shorter one, i.e.
https://linux-review.googlesource.com/q/I3268f9036512c4378cde1da37e0612b43ed4d384

Seems to me like that's "the best of both worlds" - a link you can
click, and also a unique ID that can perhaps outlive the particular
website and you can search for it elsewhere in the future, if there are
other mirrors. Exactly like the message id's in links to lore.kernel.org.

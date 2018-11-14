Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9349B89B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 16:29:34 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1E0107C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 16:29:33 +0000 (UTC)
Date: Wed, 14 Nov 2018 11:29:30 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20181114162930.GA15807@thunk.org>
References: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
	<CACRpkdabmP3EhQGiRcg_aJ75U2hpjuLe+uH36i46O+Z=wE2H_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdabmP3EhQGiRcg_aJ75U2hpjuLe+uH36i46O+Z=wE2H_Q@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] XArray
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Nov 14, 2018 at 11:02:54AM +0100, Linus Walleij wrote:
> > Now that the XArray is in, it's time to make use of it. I've got a git tree which converts
> > every current user of the radix tree to the XArray as well as converting some
> > users of the IDA to the XArray.
> >
> > The XArray may also be a great replacement for a list_head in your data structure.
> >
> > I can also talk about currently inappropriate uses for the XArray and what I
> > might do in future to make the XArray useful for more users.
> 
> This sounds like awesome.
> 
> I hope there will be an LWN article coming out of this for those of us
> who cannot participate in person.

It will video taped and should be available on the Linux Plumber's
Conference You Tube channel by next week, perhaps sooner.

   	      	    	       	  	       	   - Ted

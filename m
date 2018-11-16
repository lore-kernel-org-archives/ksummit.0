Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84DE47AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 02:47:34 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 05F86196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 02:47:33 +0000 (UTC)
Date: Thu, 15 Nov 2018 21:47:30 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20181116024730.GF20617@thunk.org>
References: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
	<CACRpkdabmP3EhQGiRcg_aJ75U2hpjuLe+uH36i46O+Z=wE2H_Q@mail.gmail.com>
	<20181115160302.428a037b@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181115160302.428a037b@lwn.net>
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

On Thu, Nov 15, 2018 at 04:03:02PM -0700, Jonathan Corbet wrote:
> 
> Just FWIW, I was there, but I suspect I'll not be making an article out
> of it; quite a bit of the material was stuff that we've covered before.
> The video should be available in a week or two for those who want to
> catch up on the rest.

A good chunk of the contents of Matthew's talk can be found at:

https://lwn.net/Articles/745073/
https://www.kernel.org/doc/html/latest/core-api/xarray.html

Two important things that's not covered in these two links are:

1)  Some future plans that Matthew has for making XArray even better

2)  The use cases for which XArray is not (yet) ready.

Short version: Sparse arrays, hash tables, and other things where the
breadth of the keyspace that gets used is very wide relative to the
number of elements stored in the XArray.  So if you need to store two
elements, one where the key is 0x0000000 and the other key is
0xffffff00, XArray might not be the best choice for you --- but maybe
that answer will change in a year or so --- see (1) above.

For more details, the video and slides should be available soon.  :-)

Cheers,

    	 	      	    	      		- Ted

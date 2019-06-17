Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4A2CBD1A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 13:46:16 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CF13F7DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 13:46:15 +0000 (UTC)
Date: Mon, 17 Jun 2019 09:45:55 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: David Howells <dhowells@redhat.com>
Message-ID: <20190617134555.GB4358@mit.edu>
References: <20265.1560522079@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20265.1560522079@warthog.procyon.org.uk>
Cc: peterz@infradead.org, paulmck@linux.ibm.com, linux@armlinux.org.uk,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Consistent terminology for ring
 buffers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jun 14, 2019 at 03:21:19PM +0100, David Howells wrote:
> 
> Can we settle on consistent terminology for ring buffers with regard to what
> we call the producer index and the consumer index?

"And all the people said, Amen!"  :-)

> In linux/circ_buf.h and Documentation/core-api/circular-buffers.rst and
> various other places "head" is the index at which insertion occurs and "tail"
> is the index of the next object to be consumed.

That's certainly my preference; as Rusty said:

> To quote Russell: "head is where the food goes in, the tail is where the ..."

I was a bit confused by what you meant by this table?

> 	PRODUCER	CONSUMER
> 	===============	===============
> 	head		tail
> 	tail		head
> 	in		out
> 	insert		remove
> 	produce		consume


Also, could you please make a submission of this proposal to the
kernel summit track here as well:

	http://bit.ly/lpc19-submit

That will help us deal with scheduling.  Thanks!!

						- Ted
							

Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 069A4C22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 23:54:14 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 70D2E103
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 23:54:13 +0000 (UTC)
Date: Mon, 24 Aug 2015 19:54:09 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20150824235409.GD13446@thunk.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<alpine.LRH.2.20.1508250612360.22949@namei.org>
	<alpine.DEB.2.11.1508242220570.15006@nanos>
	<alpine.LRH.2.20.1508250753470.26669@namei.org>
	<CAGXu5jK_4=w_e81askreLCGHXA3B3juYf-a+SNsA1j53yzt8Hw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGXu5jK_4=w_e81askreLCGHXA3B3juYf-a+SNsA1j53yzt8Hw@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 04:20:47PM -0700, Kees Cook wrote:
> 
> Could we assign this as homework instead?  There are countless examples
> of well described kernel exploits already visible on the web....

Might I suggest a somewhat higher-level homework?  What are the kernel
self-protection features that would be most useful for us to
implement, and --- this is critically important --- why aren't we
doing them already, and how can we fix that higher-order issue?

Is it because adding a particular feature would incur a huge
performance penalty?

Is it because no company has been willing to fund developers to work
on that particular feature to date?  (BTW, I consider the fact that
various companies collectively wasn't able to find a place for the
trinity maintainer to find a place to land to be somewhat of a failure
of the ecosystem, but maybe the tool wasn't as useful as we think, or
it maybe we failed to make the case to the correct set of
bean-counters.)

If the answer is that it's obvious what needs to be done, but (a) we
can't find anyone to bell the cat, or (b) the patches are going to be
rejected out of hand for one reason or another, the kernel summit is a
great opportunity to see if some face-to-face discussion address the
problem.  OTOH, if the fundamental problem is that we can't get the
headcount funded, then discussion at the kernel summit is probably not
going to be a good use of our time.  :-/

      	      	       	      	     - Ted

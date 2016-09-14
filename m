Return-Path: <tytso@thunk.org>
Date: Wed, 14 Sep 2016 10:39:34 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20160914143934.4nkdur7ivgywyfrt@thunk.org>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<20160914115456.GB22341@kroah.com>
	<1473863028.32273.28.camel@perches.com>
	<20160914143205.GA11149@kroah.com>
	<alpine.DEB.2.10.1609141633470.3033@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609141633470.3033@hadrien>
Cc: Joe Perches <joe@perches.com>, ksummit-discuss@lists.linux-foundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] checkpatch/Codingstyle and
 trivial patch spam
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 14, 2016 at 04:35:06PM +0200, Julia Lawall wrote:
> 
> The --force is only required for non-staging code?  If it is required for
> staging code, then we will have to document it in the outreachy tutorial,
> and then all the (non-outreachy) newbies who look at the tutorial will
> know about it...

The whole point of the option is to try to discourage people from
sending white-space (or only style-only) patches.  So I'm not so sure
that it would be such a tragedy if people like (for example) Markus
Elfing or Nick Krause don't find out about the --force option right
away.  Given that outreachy folks are encouraged to work on staging
code anyway, would it make a difference to them?

     	     	      	     		- Ted

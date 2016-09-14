Return-Path: <alexandre.belloni@free-electrons.com>
Date: Wed, 14 Sep 2016 19:11:07 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20160914170536.77fkhyiyikxc6jab@piout.net>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<alpine.DEB.2.10.1609140756320.3395@hadrien>
	<1473834432.32273.21.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1473834432.32273.21.camel@perches.com>
Cc: ksummit-discuss@lists.linux-foundation.org,
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

On 13/09/2016 at 23:27:12 -0700, Joe Perches wrote :
> On Wed, 2016-09-14 at 07:57 +0200, Julia Lawall wrote:
> > What types of changes are unacceptable?
> 
> It's a mixed bag.
> 
> Some maintainers reject all "style/whitespace changes".
> Some maintainers reject global consistency patches like
> int -> bool conversions.
> Some maintainers reject literal -> #define changes like
> 1 -> true and 0 -> false for booleans.
> 
> Some of those maintainers are IMO misguided.

On my side, I usually take that kind of changes only when they come with
other substantial changes, especially when the code hasn't been touched
for a while.

The other thing that I find annoying are people using Coccinnelle or any
other static code analysis tool and sending patches without saying how
they found the alleged bug. Sometimes, this results in pointless
cleanups that haven't been tested by the patch author.


-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com

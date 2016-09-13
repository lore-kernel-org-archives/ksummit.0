Return-Path: <tytso@thunk.org>
Date: Mon, 12 Sep 2016 23:14:37 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160913031437.d7aal75mnmqeqfce@thunk.org>
References: <57C78BE9.30009@linaro.org>
	<20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<20160910120055.gr2cvad7efwci4f2@thunk.org>
	<20160912162714.GC27946@sirena.org.uk>
	<20160912171450.GB27349@kroah.com>
	<20160912234548.GL27946@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160912234548.GL27946@sirena.org.uk>
Cc: Tsugikazu Shibata <tshibata@ab.jp.nec.com>,
	Greg KH <gregkh@linuxfoundation.org>, "ltsi-dev@lists.linuxfoundation.org"
	<ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
 backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 13, 2016 at 12:45:48AM +0100, Mark Brown wrote:
> Part of the problem when the announcement was done after the release was
> that there was a lot of trying to read the runes and guess what'll
> happen and when going on behind the scenes, if people would like to
> follow the LTS but also have product deadlines they can end up walking a
> tightrope with their schedule and trying to predict LTS.  What you did
> with v4.4 (announcing during the -rc cycle) addresses this, as does what
> you've done this year pulling that even further forwards.  
> 
> If things don't work out with what you're doing with the preannouncement
> it might be good to comment on that that and say you intend to do
> something different next year, but hopefully everything will be fine of
> course.

So Greg has already said that if people abuse the preannouncement by
trying to push obviously unready code into 4.9 to comply with
enterprise distributions requirements that features have to be
upstream first (although obviously the distributions would accept "bug
fix" patches), he reserved the right to retroactively declare that 4.8
or 4.10 would be the LTS kernel.

So even this year, if people behave badly (which is the reason why the
announcement was done after the release -- people were trying to game
the system) it is not guaranteed that 4.9 will be the LTS kernel.

    	       	      		      	  - Ted

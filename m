Return-Path: <tytso@thunk.org>
Date: Sat, 10 Sep 2016 08:00:55 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Tsugikazu Shibata <tshibata@ab.jp.nec.com>
Message-ID: <20160910120055.gr2cvad7efwci4f2@thunk.org>
References: <57C78BE9.30009@linaro.org>
	<20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@linaro.org>
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

On Tue, Sep 06, 2016 at 07:20:37AM +0000, Tsugikazu Shibata wrote:
> 
> Finally, A request to the community from LTSI's stand point is:
> We want to have some process to be expected; How or about when 
> LTS would be released. So that companies can easier to create their plan 
> to use LTS and that will cause more user can use stable and secure
> kernel.

LTS is released in the Fall.  This year Greg K-H announced that the
next LTS would be 4.9 a month or so ago.  He said a week or two ago
that he reserved the right to not pick 4.9 and either fall back to 4.8
or wait until 4.10 if people abused the preannouncement (e.g., by
trying to squish into Linus's tree a lot of patches that were
extremely buggy and not ready for prime time).

Historically this has been a problem when the enterprise distributions
were extremely strict about the "upstream first" policy, and so
vendors who wanted specific features would try cram stuff into the LTS
kernel before they were ready, resulting in an *extremely* unstable
LTS candidate.  I'm going to guess that since upstream first is so
loosely followed by the mobile handset community that this is going to
be much less of an issue --- or the really abusive stuff (e.g., that
spreads sh*t all over the core scheduler code changes which are
extremely specific to a particular ARM SOC core, so badly that the
schedule won't compile for any other architecture) would get rejected
by Linus with extreme prejudice anyway.

So the "about when" has been pretty easy to predict for quite a while
now.  And the process has also been roughly the same for a while; IIRC
the announcement came at the kernel summit, again with the caveat that
it might be subject to change if people abused the preannouncement.
And even when it wasn't preannounced because of the historic abuse
patterns, people who had observed past practices could generally
guestimate the LTS candidate to within +/- a release.

If that is not enough of a process, could you please state what you
think would be more helpful?

Thanks,

					- Ted

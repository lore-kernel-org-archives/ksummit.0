Return-Path: <tytso@thunk.org>
Date: Sat, 3 Sep 2016 20:10:31 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20160904001031.t7sv5isw5tc46pxr@thunk.org>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<CAOesGMibzGC3Nz+DmERJUea4jbJQ28hDGDGMuHkr+o=Wb3iUdA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOesGMibzGC3Nz+DmERJUea4jbJQ28hDGDGMuHkr+o=Wb3iUdA@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 02, 2016 at 11:21:38AM -0700, Olof Johansson wrote:
> 
> The one case where it is warranted is for features that went in since
> the last LTS release.
> 
> Pushing vendors all the way to target a non-LTS release is a bit more
> aggressive that needed, in my opinion.

So maybe they shouldn't target 4.7 before 4.8 has been released, but
once 4.8 is released, what's the problem with having vendors use 4.7.x
at that point (where x would probably be 2 or 3)?

We've already established that they don't track the stable kernel bug
fixes, but are instead cherry picking fixes.  So let's suppose 4.9
turns out to be next LTS kernel.  The only downside of using 4.7.x for
an SOC kernel is people will have to search the 4.7.x, 4.8.x, and
4.9.x stable kernels to find commits to cherry pick.  Is that really
that much harder?

The big problem is knowing that there are patches to cherry pick, and
hoping that all of the mobile handset vendors know to cherry pick all
of the patches for their diverged, forked kernel.  Is needing to
search multiple stable kernels really a sigificant part of the cost of
updating the device kernel?

At this point, the only thing thing the LTS seems to provide is that
it limits the number of kernels that patches needed to backported to,
and it limits the number of sets of stable kernel patches that device
vendor maintainers need to search to find patches to backport from.

If it reduces the number of massive features that have to be
backported to 4.4, it might be that pushing them to use 4.7 (or
waiting for the next LTS kernel, which should hopefully be coming soon
anyway) might be less risky and less work than trying to back port
feature patchsets to 4.4 or 3.18.


					- Ted

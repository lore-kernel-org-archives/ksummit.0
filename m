Return-Path: <linux@roeck-us.net>
Date: Fri, 2 Sep 2016 22:29:14 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20160903052914.GB17057@roeck-us.net>
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
> On Fri, Sep 2, 2016 at 7:42 AM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Fri, 2016-09-02 at 10:54 +0100, Mark Brown wrote:
> >> On Thu, Sep 01, 2016 at 09:25:31PM -0400, Levin, Alexander via
> >> Ksummit-discuss wrote:
> >> > On Wed, Aug 31, 2016 at 10:01:13PM -0400, Alex Shi wrote:
> >>
> >> > > I am a Linaro stable kernel maintainer. Our stable kernel is base
> >> > > on LTS plus much of upstream features backporting on them. Here
> >> > > is the detailed
> >>
> >> > I really disagree with this approach. I think that backporting
> >> > board support like what LTSI does might make sense since it's self
> >> > contained, but what LSK does is just crazy.
> >>
> >> The bulk of these features are exactly that - they're isolated driver
> >> specific code or new subsystems.  There are also some things with
> >> wider impact but it's nowhere near all of them.
> >
> > It's crazy because it encourages precisely the wrong behaviour: vendors
> > target this tree not upstream.
> 
> The one case where it is warranted is for features that went in since
> the last LTS release.
> 
> Pushing vendors all the way to target a non-LTS release is a bit more
> aggressive that needed, in my opinion.
> 
Getting a bit off track here, but at least some vendors don't even track
stable kernels in the first place because they think it is too risky/unstable.
We just had a discussion about that, after all. Personally I would prefer
to get stable kernels to the point where people feel comfortable using them,
and then consider adding functionality on top of that if needed.

Having said that, an effort like this may still be helpful, I just wonder what
the intended use case is. Is it for vendors to actually use the new LTS+feature
branch, or for vendors to cherry-pick features from it ?

Guenter

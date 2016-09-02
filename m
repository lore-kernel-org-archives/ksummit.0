Return-Path: <alexander.levin@verizon.com>
From: "Levin, Alexander" <alexander.levin@verizon.com>
To: Theodore Ts'o <tytso@mit.edu>
Date: Fri, 2 Sep 2016 15:31:03 -0400
Message-ID: <20160902193103.GD6323@sasha-lappy>
References: <57C78BE9.30009@linaro.org>
	<20160902134711.movdpffcdcsx6kzv@thunk.org>
In-Reply-To: <20160902134711.movdpffcdcsx6kzv@thunk.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	Mark Brown <broonie@linaro.org>,
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

Hi Ted,

On Fri, Sep 02, 2016 at 09:47:11AM -0400, Theodore Ts'o wrote:
> Or for that matter, why not simply going to the latest mainline
> kernel.  Since the SOC vendors aren't taking updates from the LTS
> kernel anyway, if the LTS kernel exists only as a patch repository
> where people can look for security fixes and bug fixes (sometimes
> after the upstream maintainer has to point out it's in the LTS
> kernel), if they take, say, 4.7, in the future they might need to take
> a look at 4.8.x, 4.9.x, etc., until the next LTS kernel is declared.
> So that means that an SOC vendor or a downstream product vendors might
> have to look at 3 or 4 patch releases instead of one.  Is that really
> that hard?

I agree with everything you said besides this last paragraph, and it's
our fault.

In theory, the flow of commits that need to go into the stable tree should
have uniform distribution: Linus takes fixes at any point in time, so unlik=
e
new features that come in only during the merge window fixes should be
constantly flowing in.

However, this is not the case; looking at LTS kernel releases during merge
windows we can see that the volume of commits that go into LTS kernel is mu=
ch
higher than during release candidate cycles. Why? people still hold off on
sending fixes for a variety of reasons, which isn't the way it's supposed t=
o
happen.

As a result, I'd never want to use mainline for production. The first kerne=
l
I'd consider is a stable kernel that has taken in everything that was sent
during a merge window of the next release.

--=20

Thanks,
Sasha=

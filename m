Return-Path: <tshibata@ab.jp.nec.com>
From: Tsugikazu Shibata <tshibata@ab.jp.nec.com>
To: "Theodore Ts'o" <tytso@mit.edu>, Alex Shi <alex.shi@linaro.org>
Date: Tue, 6 Sep 2016 07:20:37 +0000
Message-ID: <EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
References: <57C78BE9.30009@linaro.org>
	<20160902134711.movdpffcdcsx6kzv@thunk.org>
In-Reply-To: <20160902134711.movdpffcdcsx6kzv@thunk.org>
Content-Language: ja-JP
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	Tsugikazu Shibata <tshibata@ab.jp.nec.com>,
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

On Fri, Sep 02, 2016 at 10:47PM Theodore Ts'o wrote:
>On Thu, Sep 01, 2016 at 10:01:13AM +0800, Alex Shi wrote:
>>
>> I am a Linaro stable kernel maintainer. Our stable kernel is base on
>> LTS plus much of upstream features backporting on them. Here is the
>> detailed info of LSK: https://wiki.linaro.org/LSK
>> https://git.linaro.org/?p=3Dkernel/linux-linaro-stable.git
>
>I'm really not sure what problem you are trying to solve here.
>
>As near as I can tell, the kernels provided by a SOC vendor are a snapshot=
 in time of
>some LTS kernel, and after that, they don't bother merging any bug fixes o=
r security fixes
>from the upstream kernel.
>They might take individual patches if they notice there's a problem (e.g.,=
 it gets written
>about in the national press), but otherwise, they'll be stuck on some nons=
ense such as
>3.10.23.
>
>Then the product vendors take the SOC kernel, and further hack it up, and =
then once
>they take a snapshot, as far as I can tell, they don't take any rolling up=
dates from the
>SOC vendor either.  I'm not sure how much of this is due to lack of engine=
ering
>bandwidth, and how much of this is due to being worried that a newer SOC k=
ernel will
>introduce regressions, but either way, they'll lock onto an old SOC kernel=
, and
>apparently only take bug fixes when they notice there is a problem.
>(And in multiple cases I've gotten calls from help of SOC vendors asking f=
or assistance in
>figuring out a problem, and more often than not, the fix is in the latest =
LTS kernel, but
>that doesn't help them.) And of course, in some cases, "never", unless it'=
s written about
>in the aforementioned national press, and even then, I'm not convinced the=
 product
>vendors will have the engineering staff to turn out firmware upgrades for =
an older
>product.
>
>So what's the point of moving features into some ancient kernel?
>Who's going to take it?  Certainly not the product vendors, who consume th=
e SOC
>kernel.  The SOC vendors?  Why not just encourage them to get their device=
 drivers
>into staging, and just go to a newer LTS kernel?  Because I guarantee that=
's going to be
>less risky than taking a random collection of features, and backporting th=
em into some
>ancient kernel.
>
>Or for that matter, why not simply going to the latest mainline kernel.  S=
ince the SOC
>vendors aren't taking updates from the LTS kernel anyway, if the LTS kerne=
l exists only
>as a patch repository where people can look for security fixes and bug fix=
es (sometimes
>after the upstream maintainer has to point out it's in the LTS kernel), if=
 they take, say,
>4.7, in the future they might need to take a look at 4.8.x, 4.9.x, etc., u=
ntil the next LTS
>kernel is declared.
>So that means that an SOC vendor or a downstream product vendors might hav=
e to look
>at 3 or 4 patch releases instead of one.  Is that really that hard?

It seems too late but Here I would like to comment from LTSI project's stan=
d point:
We were started LTSI project similar view as above that is:
- LTSI is based on upstream first policy. We are providing a chance to
merge vendor-required patches on top of LTS but patches need to be
in -next or merged in later upstream and back ported to LTS.
Majority of LTSI's additional patches are drivers but sometimes tools or=20
new features may proposed. Such patches are reviewed in case by case=20
basis but should be self-contained.
- We are approaching to SoC vendors and device manufactures to=20
convince their in-house patches to be upstream. It seems that
SoC vendors can create their own fork for their customers but
providing a chance to merge their patches on top of LTS as LTSI will
make some motivation to merge such patches into upstream as long=20
term view. Yes, We hope our activities may reduce the problem=20
discussed in this thread in longer term.=20
Actually, some of SoC vendors would send us their patches=20
backported from upstream. We will continue to discuss with SoCs and=20
device manufactures to solve the problem.
- Also, some member of LTSI is employee of companies and they are
testing hard for LTSI kernel before the release. Those fixes are providing
to upstream not just LTSI actually. We see LTSI is being one of activity=20
of filling the gap between companies and community to create the kernel=20
used for the companies and industry.

Finally, A request to the community from LTSI's stand point is:
We want to have some process to be expected; How or about when=20
LTS would be released. So that companies can easier to create their plan=20
to use LTS and that will cause more user can use stable and secure
kernel.

Thanks,
Tsugikazu Shibata

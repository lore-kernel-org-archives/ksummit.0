Return-Path: <mhiramat@kernel.org>
Date: Tue, 13 Sep 2016 01:09:30 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Alex Shi <alex.shi@linaro.org>
Message-Id: <20160913010930.24ff31da6e055a54136a3797@kernel.org>
In-Reply-To: <57D62B3F.2070900@linaro.org>
References: <57C78BE9.30009@linaro.org>
	<20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<57D62B3F.2070900@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@linaro.org>,
	Tsugikazu Shibata <tshibata@ab.jp.nec.com>,
	Greg KH <gregkh@linuxfoundation.org>
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

Hi Alex,

On Mon, 12 Sep 2016 12:12:47 +0800
Alex Shi <alex.shi@linaro.org> wrote:

> On 09/06/2016 03:20 PM, Tsugikazu Shibata wrote:
> > It seems too late but Here I would like to comment from LTSI project's stand point:
> > We were started LTSI project similar view as above that is:
> > - LTSI is based on upstream first policy. We are providing a chance to
> > merge vendor-required patches on top of LTS but patches need to be
> > in -next or merged in later upstream and back ported to LTS.
> > Majority of LTSI's additional patches are drivers but sometimes tools or 
> > new features may proposed. Such patches are reviewed in case by case 
> > basis but should be self-contained.
> > - We are approaching to SoC vendors and device manufactures to 
> > convince their in-house patches to be upstream. It seems that
> > SoC vendors can create their own fork for their customers but
> > providing a chance to merge their patches on top of LTS as LTSI will
> > make some motivation to merge such patches into upstream as long 
> > term view. Yes, We hope our activities may reduce the problem 
> > discussed in this thread in longer term. 
> > Actually, some of SoC vendors would send us their patches 
> > backported from upstream. We will continue to discuss with SoCs and 
> > device manufactures to solve the problem.
> > - Also, some member of LTSI is employee of companies and they are
> > testing hard for LTSI kernel before the release. Those fixes are providing
> > to upstream not just LTSI actually. We see LTSI is being one of activity 
> > of filling the gap between companies and community to create the kernel 
> > used for the companies and industry.
> 
> Thanks for Tsugikazu's explanation of LTSI!
> LSK follows the very similar rules as LTSI, if anyone like to look into
> LSK's policies: https://wiki.linaro.org/LSK
> From 'LSK INCLUSION CONSIDERATIONS' chapter.
> 
> Compare to LTSI, LSK has newer LTS, and more upstream features
> backporting which requested by many SoC vendors. Apparently these are
> needed widely in industry. And the separately feature branch give more
> feasibility on feature selection to user. If don't like any features
> branches, That just left pure LTS.

If I understand correctly, the major difference of LSK and LTSI is the SoC
neutral or not. LSK focuses to backport "features" not "SoC/board supports"
because many vendors may port their kernel on LSK to make a stable
BSP/AOSP kernel for their devices. But LTSI aims to help vendors to
push their patches to upstream by giving them a motivation to merge
their patches within the LTSI merge window.

If we merge the effort of LTSI and LSK, we'll also give vendors a chance
to *backport* their SoC support from upstream.

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

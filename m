Return-Path: <stephen@networkplumber.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B4ADA1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 02:43:44 +0000 (UTC)
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC5F1279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 02:43:43 +0000 (UTC)
Received: by mail-pf0-f181.google.com with SMTP id x72so37433828pfd.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 01 Sep 2016 19:43:43 -0700 (PDT)
Date: Thu, 1 Sep 2016 19:43:53 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: "Levin, Alexander via Ksummit-discuss"
	<ksummit-discuss@lists.linuxfoundation.org>
Message-ID: <20160901194353.75caf73a@xeon-e3>
In-Reply-To: <20160902012531.GB28461@sasha-lappy>
References: <57C78BE9.30009@linaro.org>
	<20160902012531.GB28461@sasha-lappy>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	Mark Brown <broonie@linaro.org>,
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

On Thu, 1 Sep 2016 21:25:31 -0400
"Levin, Alexander via Ksummit-discuss" <ksummit-discuss@lists.linuxfoundation.org> wrote:

> On Wed, Aug 31, 2016 at 10:01:13PM -0400, Alex Shi wrote:
> > Hi All,
> > 
> > I am a Linaro stable kernel maintainer. Our stable kernel is base on LTS
> > plus much of upstream features backporting on them. Here is the detailed
> > info of LSK: https://wiki.linaro.org/LSK
> > https://git.linaro.org/?p=kernel/linux-linaro-stable.git
> > 
> > These kind of backporting features are requested by many LSK members
> > which most are leading ARM product vendors. LSK target on the feature
> > backporting collaboration, to reduce the duplicate work on that. Current
> > LTSI: https://ltsi.linuxfoundation.org/what-is-ltsi, has
> > similar target for backporting collocation. but there are still couples
> > problems.
> > 
> > 1, LTSI is focus on board support more than feature backporting
> > 
> > 2, ltsi kernel version 3.10/3.14/4.1 is older than LTS and LSK 3.18/4.1/4.4.
> > 
> > 3, merge everything together isn't good for some users and can not give
> > user option to select preferred kernel feature. On the contrary, each of
> > feature backported separately on latest LTS in LSK, user can just pick
> > their wanted features and merge them for their own kernel.
> > 
> > 4, all vendor specific driver in one branch get complains and developing
> > status make it hard to handle changes in a fast-forward stable kernel.
> > 
> > As to LSK, although most feature are ARM related, but LSK also provide
> > some common feature which works on other archs, like cgroupv2, RO-vDSO,
> > KASAN, PAX_USERCOPY, etc. I believe this common backporting is also
> > useful for common industries.
> > If so, could we call a better way for feature backporting collaboration?  
> 
> I really disagree with this approach. I think that backporting board support
> like what LTSI does might make sense since it's self contained, but what LSK
> does is just crazy.
> 
> Stable kernels have very strict restrictions that are focused on not taking
> commits that have high potential to cause unintended side effects, incorrect
> interactions with the rest of the kernel or just introduce new bugs.
> 
> Mixing in new features that interact with multiple subsystems is a recipe for
> disaster. We barely pull off backporting what looks like trivial fixes, trying
> to do the same for more than that is bound be broken.
> 
> As an alternative, why not use more recent stable kernels and customize the
> config specifically for each user to enable on features that that specific
> user wants to have.
> 
> The benefit here is that if used correctly you'll get to use all the new shiny
> features you want on a more recent kernel, and none of the things you don't
> want. So yes, you're upgrading to a newer kernel all the time, but if I
> understant your use-case right it shouldn't matter too much, more so if
> you're already taking chances on backporting major features yourself.
> 

Agree, calling it a stable kernel is a misnomer; it looks like a fork. 
It really should be:
 Linaro Arm Home for Features not Upstream Kernel (LAHFUK)
or maybe linaro-next?

How come the feature matrix doesn't list what upstream kernel the feature
was merged into?

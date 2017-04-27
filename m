Return-Path: <lee.jones@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 27BE3A88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Apr 2017 10:41:15 +0000 (UTC)
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 531478C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Apr 2017 10:41:14 +0000 (UTC)
Received: by mail-wr0-f181.google.com with SMTP id z52so14687188wrc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Apr 2017 03:41:14 -0700 (PDT)
Date: Thu, 27 Apr 2017 11:41:08 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20170427104108.ppsrmuvsrofnghju@dell>
References: <CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
	<1834084.5qZ8rLimvk@avalon>
	<1492631703.3217.30.camel@HansenPartnership.com>
	<3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
	<20170426084253.yvxyzb3khh2fej4j@mwanda>
	<yq1h91be0do.fsf@oracle.com>
	<1493217078.2526.8.camel@HansenPartnership.com>
	<alpine.LSU.2.20.1704261633140.12121@cbobk.fhfr.pm>
	<1493217836.2526.10.camel@HansenPartnership.com>
	<87h91arzic.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87h91arzic.fsf@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Doug Ledford <dledford@redhat.com>,
	Bart Van Assche <bart.vanassche@sandisk.com>,
	David Miller <davem@davemloft.net>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 27 Apr 2017, Jani Nikula wrote:
> On Wed, 26 Apr 2017, James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> > Agreed, but I think you'll find most maintainers have a "trust factor"
> > for reviewers.  Perhaps we should discuss how we arrive at this and how
> > we should make it more public.  The way I often deal with less trusted
> > reviewers is to redo their review and point out all the things they
> > missed and ask them not to come back until they can be more thorough.
> 
> I think that's also a bit harsh, because I think the only way to become
> a better reviewer is to... review. I know it's hard to balance being
> welcoming to new reviewers and ensuring the patches do get proper review
> in the end.

I'm inclined to agree, this is a harsh approach.  My personal method
is to allow anyone to review, regardless of their credibility/trust
status.  I make a point not to hamper or criticise anyone that's
genuinely tying to help, unless of f course they are dishing out bogus
review comments, then those will need addressing, but only picking up
even say 10% of the issues really isn't a problem.  It doesn't matter
how many points are picked-up or missed, we as Maintainers can always
conduct an additional review or one in parallel.

I find additional reviewers particularly helpful if I'm overloaded,
since I can then insist that the contributor fixes all outstanding
review comments before I conduct my, hopefully thorough, review. 

-- 
Lee Jones
Linaro STMicroelectronics Landing Team Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blogs

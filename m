Return-Path: <mchehab@s-opensource.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 09E68728
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Nov 2016 16:38:53 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 84DC4125
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Nov 2016 16:38:52 +0000 (UTC)
Date: Tue, 22 Nov 2016 14:38:45 -0200
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20161122143845.5b3d8c29@vento.lan>
In-Reply-To: <871sy3y13o.fsf@intel.com>
References: <cover.1479656706.git.mchehab@s-opensource.com>
	<20161121104444.28862d80@lwn.net>
	<20161121171557.5c0fbe8c@vento.lan> <877f7vy684.fsf@intel.com>
	<20161122131510.0fadabc4@vento.lan> <871sy3y13o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Markus Heiser <markus.heiser@darmarIT.de>,
	ksummit-discuss@lists.linuxfoundation.org,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 0/9] Get rid of bitmap images
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Tue, 22 Nov 2016 17:40:27 +0200
Jani Nikula <jani.nikula@intel.com> escreveu:

> On Tue, 22 Nov 2016, Mauro Carvalho Chehab <mchehab@s-opensource.com> wrote:
> > I tried both, none broke the long lines on 
> > Documentation/media/uapi/v4l/fieldseq_tb.svg.  
> 
> How about:
> 
> 'tidy -xml -i Documentation/media/uapi/v4l/fieldseq_tb.svg | fmt -sw 80'
> 
> Both pretty indents and folds. I think it should Just Work(tm).

No, it didn't... Try this:
	$ tidy -xml -i Documentation/media/uapi/dvb/dvbstb.svg|fmt -sw 80 >a.svg

And open both images with inkscape. You'll see that it mangled the
texts :-(

Just using fmt didn't seem to cause issues, at least on this image, but
I'll do more tests to be sure.



Regards,
Mauro

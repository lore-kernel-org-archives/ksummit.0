Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A976C71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 18:47:05 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0242.hostedemail.com
	[216.40.44.242])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 1192F1DCA0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 18:47:05 +0000 (UTC)
Message-ID: <1472496420.3425.77.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Luck, Tony" <tony.luck@intel.com>, "Levin, Alexander"
	<alexander.levin@verizon.com>
Date: Mon, 29 Aug 2016 11:47:00 -0700
In-Reply-To: <1472493700.3425.67.camel@perches.com>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<20160828023807.GC19088@sasha-lappy>
	<1472404557.26978.84.camel@perches.com>
	<3908561D78D1C84285E8C5FCA982C28F3A1B3222@ORSMSX114.amr.corp.intel.com>
	<1472493700.3425.67.camel@perches.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <levinsasha928@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2016-08-29 at 11:01 -0700, Joe Perches wrote:
> On Mon, 2016-08-29 at 17:46 +0000, Luck, Tony wrote:
> > [checkpatch] offered the advice
> > to restructure the code with helper functions etc. to avoid deep
> > indentation?
> It suggests that already for 6+ leading tabs,

And here's an inexact little histogram of the code that
expands indent levels in the -next kernel source tree.

$ grep -rP --include=*.[ch] -oh "^[\t]+(do|while|for|if|else|return|goto|continue|switch|default|case|break)\b" * | \
  sed -r 's/^(\t+).*$/\1/' | awk '{print length($0)}' | sort -n | uniq -c
1217165 1
 783085 2
 249655 3
  59775 4
  11653 5
   1993 6
    444 7
    158 8
     50 9
     19 10
     10 11
      4 12
      1 13

Some of that code, as Linus once put it, is eye-gouging.
Luckily, almost all of the 7+ tab indent code is prehistoric.

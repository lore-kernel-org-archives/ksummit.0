Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A06425A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 02:21:03 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0192.hostedemail.com
	[216.40.44.192])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B288A8C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 02:21:02 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave03.hostedemail.com (Postfix) with ESMTP id DD11628E8BC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 02:21:01 +0000 (UTC)
Message-ID: <1472350854.26978.51.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Levin, Alexander" <alexander.levin@verizon.com>
Date: Sat, 27 Aug 2016 19:20:54 -0700
In-Reply-To: <1472348579.26978.47.camel@perches.com>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
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

On Sat, 2016-08-27 at 18:42 -0700, Joe Perches wrote:

>      46 WARNING:LONG_LINE_COMMENT
>      45 WARNING:LEADING_SPACE
>      37 WARNING:LONG_LINE
>      16 ERROR:GIT_COMMIT_ID
>      11 WARNING:COMMIT_LOG_LONG_LINE
>       5 WARNING:BRACES
>       2 WARNING:BAD_SIGN_OFF
>       2 WARNING:AVOID_BUG
>       2 ERROR:SPACING
>       1 WARNING:SPLIT_STRING
>       1 WARNING:FILE_PATH_CHANGES
>       1 WARNING:ENOSYS
>       1 ERROR:MISSING_SIGN_OFF

My copy/pasta mistake, the above was Ingo Molnar's list

Here's Linus'

     37 WARNING:LONG_LINE
     19 ERROR:GIT_COMMIT_ID
      8 WARNING:PREFER_PR_LEVEL
      6 ERROR:SPACING
      4 WARNING:MACRO_WITH_FLOW_CONTROL
      3 WARNING:COMMIT_LOG_LONG_LINE
      2 WARNING:TYPO_SPELLING
      2 WARNING:BAD_SIGN_OFF
      2 ERROR:TRAILING_STATEMENTS
      1 WARNING:NEW_TYPEDEFS
      1 WARNING:LONG_LINE_COMMENT
      1 WARNING:LINE_SPACING
      1 WARNING:CONSTANT_COMPARISON
      1 WARNING:AVOID_BUG
      1 ERROR:STABLE_ADDRESS

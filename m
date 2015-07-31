Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A6E3405
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:15:01 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 51CCF7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:15:00 +0000 (UTC)
Message-ID: <55BB9EFE.7070101@sonymobile.com>
Date: Fri, 31 Jul 2015 09:14:54 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: Theodore Ts'o <tytso@mit.edu>, David Woodhouse <dwmw2@infradead.org>
References: <1438182000.2204.35.camel@HansenPartnership.com>	<1438184150.26511.77.camel@infradead.org>	<1438187888.2204.83.camel@HansenPartnership.com>	<1438191159.26511.91.camel@infradead.org>	<1438213176.2204.152.camel@HansenPartnership.com>	<1438243737.26511.114.camel@infradead.org>	<1438264121.2229.11.camel@HansenPartnership.com>	<1438268514.26511.216.camel@infradead.org>	<1438273046.2229.37.camel@HansenPartnership.com>	<1438283820.26511.243.camel@infradead.org>
	<20150731144118.GA29787@thunk.org>
In-Reply-To: <20150731144118.GA29787@thunk.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"mcgrof@gmail.com" <mcgrof@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"jkkm@jkkm.org" <jkkm@jkkm.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/31/2015 07:41 AM, Theodore Ts'o wrote:
> I will note that this thread is a great demonstration why I very
> *firmly* believe that legal issues (whether it is about license
> interpretation or enforcement) should be completely out of scope for
> the kernel summit.
> 
> About the only thing worse than programmers thinking they can play
> lawyers on TV and render legal opinions are physicists at national
> labs thinking they can tell computer science people how to design
> operating systems and design scale-out computing architectures because
> everything can be derived from F=ma.

I agree with the sentiment.  But I do think kernel developers can have
some role in expressing the will and intention of the copyright holders
(to the degree that's possible on a massively distributed project
like the kernel).  As a hypothetical, if we wanted to create a safe
haven for people to distribute binary firmware blobs linked to the
kernel, it might be legally worthwhile to create and publish a statement
from major stakeholders (who are themselves copyright holders as well
as technical experts) on the issue.  Lawyers use statements from technical
experts fairly often.

I can't think of a better place than a kernel summit (well, maybe
inside the TAB) where kernel developers could use face-to-face
communication to determine if there's consensus on this, as a
first step in creating such a statement.

I have no idea if this issue rises to the level of concern that would
warrant such action.  My own experience is that most companies with
binary firmware blobs have by now figured out how to distribute them
in a way that they believe satisfies the requirements of the GPL.
 -- Tim

Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 57836CBB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 20:10:17 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F03FD784
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 20:10:16 +0000 (UTC)
Date: Wed, 19 Sep 2018 13:10:15 -0700
From: "Luck, Tony" <tony.luck@intel.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20180919201015.GA31523@agluck-desk>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
	<20180918162948.769dda1d@coco.lan>
	<1537356482.4640.7.camel@HansenPartnership.com>
	<20180919083749.49268562@coco.lan>
	<20180919090332.723c1b75@coco.lan>
	<1537366581.6816.1.camel@HansenPartnership.com>
	<20180919165552.0f30bbef@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20180919165552.0f30bbef@coco.lan>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC FOR KS] CoC and Linus
 position (perhaps undocumented/closed/limited/invite session)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 19, 2018 at 04:55:52PM -0300, Mauro Carvalho Chehab wrote:
> After re-reading it, I'm pretty sure that, the way it is, publishing
> e-mails violate this CoC.
> 
> The thing is that, when it uses the commas there:
> 
> 	"private information, such as a physical or electronic address," 
> 
> The commas actually defines what "private information" is. Even if
> this would be changed by "foo information", what we have here is actually two
> English sentences that were merged together:
> 
> First sentence:
> 	"Private information, such as a physical or electronic address."
> 
> Second sentence:
> 	"Publishing others’ private information without explicit permission"
> 
> See, replace it by foo at the original text:
> 	"Publishing others’ *foo* information, such as a physical 
> 	 or electronic address, without explicit permission"
> 
> You'll see that "*foo* information" becomes defined.

So perhaps we can move on to discussing a patch to fix it?


diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
index ab7c24b5478c..ec99a17ab646 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -31,10 +31,13 @@ Examples of unacceptable behavior by participants include:
 * Trolling, insulting/derogatory comments, and personal or political attacks
 * Public or private harassment
 * Publishing others’ private information, such as a physical or electronic
-  address, without explicit permission
+  address[1], without explicit permission
 * Other conduct which could reasonably be considered inappropriate in a
   professional setting
 
+[1] Note that e-mail addresses used on public mailing lists are not
+considered to be private information and can (in fact should) be used
+to give credit in Reported-by, Acked-by, Tested-by etc. tags.
 
 Our Responsibilities
 ====================

Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D86B4CC8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 20:07:35 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 76C41772
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 20:07:35 +0000 (UTC)
Message-ID: <1539202053.12644.8.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 10 Oct 2018 13:07:33 -0700
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Subject: [Ksummit-discuss] [PATCH v2 0/3] code of conduct fixes
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Resend to show accumulated tags and also to add a third patch listing
the TAB as the reporting point as a few people seem to want.  If it
gets the same level of support, I'll send it in with the other two.

---

Previous cover letter:


We've had several threads discussing potential changes to the code of
conduct but Mauro is the only person to have proposed an actual patch. 
In order to move the debate on, I'm presenting two patches, one to fix
the email problem Mauro identified and the other to strip the
enforcement section pending community discussion as Shuah suggested.

I'll take responsibility for collecting any tags people want to add
(review/ack/sign off, etc) and sending the patch in as a signed pull
request before 4.19 final if they get enough community support.

Note, I've sent both patches in as a series to facilitate review and
discussion, but they are separable if one is looked on with less favour
than the other.

It was also a bit unclear which list to send this to, but I finally
settled on linux-kernel as the catch all and ksummit-discuss since
that's where most of the current discussion is.  I can add other lists
as people suggest them.

James

---

James Bottomley (3):
  code-of-conduct: Fix the ambiguity about collecting email addresses
  code-of-conduct: Strip the enforcement paragraph pending community
    discussion
  code-of-conduct: Add back the TAB as the central reporting point

 Documentation/process/code-of-conduct.rst | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

-- 
2.13.7

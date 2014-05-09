Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C7945AF2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:30:58 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7ADBE20314
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:30:58 +0000 (UTC)
Message-ID: <536D10C2.5070907@zytor.com>
Date: Fri, 09 May 2014 10:30:42 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Josh Triplett <josh@joshtriplett.org>
References: <5367D989.1000504@linaro.org> <20140505205339.GB15815@cloud>
	<53684526.7060507@zytor.com> <20140506022158.GA1499@thin>
In-Reply-To: <20140506022158.GA1499@thin>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: John Stultz <john.stultz@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/05/2014 07:21 PM, Josh Triplett wrote:
> 
> 64-bit off_t support seems like a similar issue; all the kernel
> interfaces support 64-bit off_t, and glibc has #defines for
> 64-bit off_t, but a large number of userspace programs don't bother to
> define them.
> 
> That seems like the right path to transition time_t as well.
> 

The transition to a 64-bit off_t was still enormously complex, which
involved defining entirely new types and APIs which were then optionally
#defined to the traditional names.  Hence the _FILE_OFFSET_BITS opt-in.

For time_t it is even worse.

	-hpa

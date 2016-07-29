Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C79AC91A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 20:43:20 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 51B34257
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 20:43:19 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org,
	Darren Hart <dvhart@infradead.org>
Date: Fri, 29 Jul 2016 22:48:24 +0200
Message-ID: <39739692.jqz6N0cLYc@vostro.rjw.lan>
In-Reply-To: <20160729202500.GD3062@f23x64.localdomain>
References: <20160729202500.GD3062@f23x64.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Nicholas Mc Guire <der.herr@hofr.at>, Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Linux and Functional Safety
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, July 29, 2016 01:25:00 PM Darren Hart wrote:
> We are seeing a surge in demand for using Linux in safety critical systems, from
> a broad spectrum reaching from automotive and industrial automation to rail and
> aerospace.
> 
> Functional Safety is about risk management. It involves identification of
> hazards to systems which may impact the proper operation of a safety function
> and minimizing those risks. It is a complex end-to-end systematic process
> embodied in industry standards, principally IEC 61508 Ed 2 as well as derivative
> domain specific standards, such as ISO 26262 (Passenger vehicles below 3.5
> Tons).
> 
> These standards were developed to support purpose built MCU class hardware and
> very small software stacks (3 orders of magnitude smaller than the Linux
> kernel). Applying them to modern general purpose computer systems and operating
> systems is not straight forward. It requires a thorough mapping of processes and
> development of a convincing set of claims, argumentation, and evidence to
> certify these elements to the required safety integrity levels (discrete levels
> describing the overall risk reduction capabilities of a system).
> 
> The OSADL SIL2LinuxMP project has been working at developing these mappings and
> a body of evidence into a generic compliance route, conforming to IEC 61508
> Ed 2. The approach is largely dependent on the rigorous development model of key
> software stack elements, most notably glibc and the Linux kernel.  Git provides
> traceability for all changes and ample meta-data to apply statistical models to
> determine the quality and risk associated with each change. The static analysis
> tools add further confidence in the codebase by eliminating common classes of
> errors and enforcing a consistency which facilitates systematic and effective
> maintenance.
> 
> Additional tools are being developed to aid in the compliance route. A team at
> Hitachi, for example, is developing code minimization tooling to help minimize
> the lines of code which are included in the scope of the certification.
> 
> I believe understanding the ways in which our processes are being used to
> qualify Linux based safety critical systems is important for every maintainer to
> have. There may also be opportunity to incorporate some of this tooling into the
> mainstream development and reduce the need for secondary tooling. Even in this
> early stage, a stream of patches emerging from API compliance checkers has
> already found its way into the mainline kernel. The attendees are sure to have
> insight into their subsystem which will lead to improved analysis.
> 
> Potential Participants:
>   Darren Hart
>   Nicholas Mc Guire
>   Thomas Gleixner
>   Linus Walleij
>   Jason Cooper

I'm interested in this too.

Thanks,
Rafael

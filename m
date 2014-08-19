Return-Path: <martin.petersen@oracle.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
	<20140819152350.GE11085@thunk.org> <20140819154029.GE5423@mwanda>
	<20140819154738.GB16948@roeck-us.net> <20140819160917.GF5423@mwanda>
Date: Tue, 19 Aug 2014 12:34:58 -0400
In-Reply-To: <20140819160917.GF5423@mwanda> (Dan Carpenter's message of "Tue,
	19 Aug 2014 19:09:17 +0300")
Message-ID: <yq1wqa4v3nx.fsf@sermon.lab.mkp.net>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] No more module removal -- Unconference track
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

>>>>> "Dan" == Dan Carpenter <dan.carpenter@oracle.com> writes:

Dan> If you rmmod a module it probably means that your code was buggy
Dan> before you started the rmmod.  We already taint the kernel when the
Dan> kernel oopses.  It's the same thing.

Buggy does not imply that the rest of the kernel is left in a mangled
state. Also, I load and unload device driver modules many, many times
per day. A significant win on large systems that take half an hour to
boot.

-- 
Martin K. Petersen	Oracle Linux Engineering

Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD34253B38
	for <lists+linux1394-devel@lfdr.de>; Thu, 27 Aug 2020 02:57:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kB6ET-0007Ux-DV; Thu, 27 Aug 2020 00:57:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounces+4948103-df75-linux1394-devel=lists.sourceforge.net@sendgrid.net>)
 id 1kB6ES-0007Un-1r
 for linux1394-devel@lists.sourceforge.net; Thu, 27 Aug 2020 00:57:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y7Cc57uUWIGRaEfNYvziVUmPzMm8G+EY63A9RQXtoAs=; b=l6B61K/n+gN3IBNR5+b9dBjm8A
 yJgYVAYID9EItTFYJ1xORzsTV+5K8/6EAqne76i8Kvk4ygsAfmozH+VIVYmIOxVebJ6TS6AaCC62Z
 pktGFOBvp1Bx3TcqMplEuJzOixFhVzd6ld/WuoU3I+p0Z2iY0XCOihznnH5Iff+kdWgw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y7Cc57uUWIGRaEfNYvziVUmPzMm8G+EY63A9RQXtoAs=; b=Y
 lvPAannWpYsroKS/HCsEOHDHl+w6KfDt2daGiP6MzsJpIrRnye2gVcCYPGehjw3w/cjfv78u3IqAG
 7qHlJAAi0s1MSkM9T+vU7RaZcP5PzM0H/AY9FkGNUtMRC//KPiYzKL0qW9h53Gx9pgbXIodLivll0
 ikC6DUsKTOqP8f38=;
Received: from wrqvpnpf.outbound-mail.sendgrid.net ([149.72.50.63])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kB6EQ-001qV0-Bm
 for linux1394-devel@lists.sourceforge.net; Thu, 27 Aug 2020 00:57:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendgrid.net; 
 h=reply-to:from:to:subject:mime-version:content-type:content-transfer-encoding;
 s=smtpapi; bh=y7Cc57uUWIGRaEfNYvziVUmPzMm8G+EY63A9RQXtoAs=; b=xw
 C0D8FvDe/6gZfda+k/CzCtWjSPv8wBHX9OWlGdfB2BcHhaegUuez+ZemMQFLLwFE
 6qoen9ELEw6GpSFcS46mL1SXgpxjOX2mzOuVgq4+C3f5pS4qqMjGQgw7+hSmFR7O
 iBQXfkKjkFq2AqLPWYC1TNqVHwXDEF+Bo3TOWO4Xk=
Received: by filter1586p1las1.sendgrid.net with SMTP id
 filter1586p1las1-20176-5F4704F8-8
 2020-08-27 00:57:28.235008524 +0000 UTC m=+92278.764015266
Received: from mail.com (unknown)
 by ismtpd0007p1las1.sendgrid.net (SG) with ESMTP id bJq-2YXIQgaiBIOsj0JVQw
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 27 Aug 2020 00:57:28.016 +0000 (UTC)
From: Richard Wahl<wahl-Richy@mail.com>
To: linux1394-devel@lists.sourceforge.net
Subject: DONATION
Date: Thu, 27 Aug 2020 00:57:28 +0000 (UTC)
Message-ID: <20200827005727.700E1C5E25690BB1@mail.com>
MIME-Version: 1.0
X-SG-EID: Pi9w8YTZchD2AGqRTKxcX/hvrtAIswiOm2Mb1qxwhorJ2gK7BB4dIUgR+dfk5XY8xzTyPRnYfPZ6Mw
 cpW1xbdjizSgbRrWGMjs+sa/w+nzMH9+Qe90W4er1LY8KFyJOc8oMdyuxrXBmW5+AsbTPryIuj9FX1
 c5N8qwsel2HKco2xMwkI76RzXsWLTB3oPj4gHHr1tzOUqiQt9wl2lLHMWb07yUAZI1JL2MHxx5UyZO
 Q=
X-Spam-Score: 3.7 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?149.72.50.63>]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (wahl-richy[at]mail.com)
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [149.72.50.63 listed in bl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.7 FROM_MISSP_FREEMAIL    From misspaced + freemail provider
 -0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1kB6EQ-001qV0-Bm
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Reply-To: adelenebreton@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hello linux1394-devel,

you have a donation of $3,000,000.00 ( 3 million dollars).
My name is Richard Wahl from the united states. I won the America 
lottery worth $533 million and I am donating a portion of it to 
just 10 lucky people and a few Orphanage homes as a memorandum of 
goodwill to humanity. and also as a way of assistance over the 
COVID 19 Pandemic.
If you are a recipient of this mail linux1394-
devel@lists.sourceforge.net  contact me on  
adelenebreton@gmail.com for more details and claim. I may be very 
busy but I will take out time to respond to you. 


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

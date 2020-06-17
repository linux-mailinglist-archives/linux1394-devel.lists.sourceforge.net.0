Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FFB1FC42D
	for <lists+linux1394-devel@lfdr.de>; Wed, 17 Jun 2020 04:36:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jlNvr-0004jN-Ge; Wed, 17 Jun 2020 02:36:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <martin.petersen@oracle.com>) id 1jlNvq-0004jG-E0
 for linux1394-devel@lists.sourceforge.net; Wed, 17 Jun 2020 02:36:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:In-Reply-To:Date:
 References:Message-ID:From:Subject:Cc:To:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qvgZnLOIIfJf/ujxLoAp3CI8oYpCJxkhQIhjpeCqggY=; b=IRglj6QssR1hMn323M2I1A1z7
 KgWOeIfF3GUJlnzjY2dgn0mpQdqIMd9vy6op/IWjoRvCUbb/6L/fM4aqbB+gcI0VvIL7wUAlAfBq7
 XLcGrd1XrCz5yMbFPmodr6tZz19sGbRfN2M39ar321HwbXa/Is8zHKEpH543c6eue1/zQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:In-Reply-To:Date:References:Message-ID:From:
 Subject:Cc:To:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qvgZnLOIIfJf/ujxLoAp3CI8oYpCJxkhQIhjpeCqggY=; b=U3hcQqRECa2sB6XjwNYnN4Nc9y
 LiUxwlvcz90XsQjBtKzXNehDtSZ6/9oUHNcg9c2JJmGdshQCFLWq+RYzk+ezJnmB9OQQIHFCYBJ5s
 GLAM5xXFcwTyF5NsEVeKmN5ObaNQvOe3+MVmCxJagYGnm6ADSyRdbcoJpJhyO93NMzZk=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jlNvn-008nRJ-06
 for linux1394-devel@lists.sourceforge.net; Wed, 17 Jun 2020 02:36:06 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05H2Qpea164602;
 Wed, 17 Jun 2020 02:35:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : message-id : references : date : in-reply-to : mime-version :
 content-type; s=corp-2020-01-29;
 bh=qvgZnLOIIfJf/ujxLoAp3CI8oYpCJxkhQIhjpeCqggY=;
 b=rqkC4UCaHQsCrL17aAfWVUhKGjEhhkeuEZBr6OGmRA9x0eqMKnyaMSpQFhHbr2cT9Lun
 BbeAkVeUcyXXnfSFC5N879/COopxmwFJpkqGamCb08iTE655BsVdxIJVy5B/TkEyPUBE
 6rQ/qEizSgx0LZMbVOv6trUwHr6nRPqL8BrwhE5lPaWdyaiNz1WUalX9FhB9p1rXgnTq
 /DX6im6iM/9T3jtuRWfhE0UrMy1dvwPcha91lgkvo3QQYC/09i2QH6OCTkgdfREnArpI
 /FBrQTdMQFl6X7Lk4YmZvfBSXJtz3k0W3W4mcW3QZaZ6OnwqMbBkHFzCoUKhMEfy2Lm4 gw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 31q65jrphw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jun 2020 02:35:37 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05H2X59R126602;
 Wed, 17 Jun 2020 02:35:36 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 31q66mew15-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jun 2020 02:35:36 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05H2ZLF9004679;
 Wed, 17 Jun 2020 02:35:26 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jun 2020 19:35:21 -0700
To: Finn Thain <fthain@telegraphics.com.au>
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq18sgml9ds.fsf@ca-mkp.ca.oracle.com>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
Date: Tue, 16 Jun 2020 22:35:18 -0400
In-Reply-To: <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet> (Finn
 Thain's message of "Sun, 14 Jun 2020 10:03:31 +1000 (AEST)")
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 phishscore=0
 mlxscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999 suspectscore=1
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006170019
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1011
 lowpriorityscore=0 malwarescore=0 cotscore=-2147483648 suspectscore=1
 bulkscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0 priorityscore=1501
 phishscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170018
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jlNvn-008nRJ-06
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
Cc: Chris Boot <bootc@bootc.net>, Bart Van Assche <bvanassche@acm.org>,
 linux-scsi@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Nicholas Bellinger <nab@linux-iscsi.org>,
 target-devel@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux1394-devel@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


Finn,

> I haven't used this driver for a long time, but I still own PowerMacs
> with firewire, and I know I'm not the only one.

I also have old 1394 hardware kicking around in the basement. But having
worked with FireWire shared storage targets in the past, I have zero
desire to ever touch any of that again.

I could understand an objection if we were to entertain removing
sbp2. But really, how many people are setting up FireWire targets?

-- 
Martin K. Petersen	Oracle Linux Engineering


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
